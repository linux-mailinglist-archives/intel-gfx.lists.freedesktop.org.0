Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C27DB87028C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 14:22:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB95B11214A;
	Mon,  4 Mar 2024 13:22:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="du3H61/x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 646C211214A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 13:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7OGhkT+vmBJIttv1yU45zar+/wVhnVDS1t7pFbRwXyE=; b=du3H61/xlBquE6zOwIJ7r+Z0LF
 d7zaeQl3le/Mgc2od6pYPX2KzB/NRRlcXIDObiIe3iacCwn3azhwAGrZOkt/TYdA4txDr/T9Gm73M
 dKTz30IMwKz0+s+LyYwVE+taSrNM2BYojZimS3w2NmXOtOEg946GxG9wqDJT7YF36vWEckb8K//OR
 JvR7x6EPpmYYdDIileBoyjWiLAK9sRl9ciCX/DqPQEYILzBMnBInJQ5UF44e5kuHn3sdSUd2BL/Sz
 bsfnQT3L6cSr4KMiFmzwYZCetx/Y+uPrFxNduFM52/cmlzddkVQmXJIdtpNzmGE14e6JoGvW8pdqT
 BWOhEAjA==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rh8Ge-00000001WXu-1U8U;
 Mon, 04 Mar 2024 13:22:08 +0000
Date: Mon, 4 Mar 2024 13:22:08 +0000
From: Matthew Wilcox <willy@infradead.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: Regression on linux-next (next-20240228)
Message-ID: <ZeXLAAVtjEz0mB8V@casper.infradead.org>
References: <SJ1PR11MB61292145F3B79DA58ADDDA63B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZeVis2823T4YllDg@casper.infradead.org>
 <SJ1PR11MB6129A8999D977A46D6E9CA4AB9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6129A8999D977A46D6E9CA4AB9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 04, 2024 at 10:03:13AM +0000, Borah, Chaitanya Kumar wrote:
> > Could you try putting the two:
> > 
> > -                       list_del(&folio->lru);
> > 
> > statements back in and see if that fixes it?
> 
> That seems to fix it.
> 
>                 if (!folio_put_testzero(folio))
> +                       list_del(&folio->lru);
>                         continue;

Ummm ... did you put { and } around this?  Otherwise the indentation
is misleading and what you're actually done is:

		if (!folio_put_testzero(folio))
			list_del(&folio->lru);
		continue;

which will simply leak memory.

>                 if (folio_test_large(folio)) {
>                         __folio_put_large(folio);
> +                       list_del(&folio->lru);
>                         continue;
>                 }
> Regards
> 
> Chaitanya
