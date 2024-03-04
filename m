Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C41D86F9F6
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 07:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589F510FD0D;
	Mon,  4 Mar 2024 06:19:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="WLklMuoI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1318 seconds by postgrey-1.36 at gabe;
 Mon, 04 Mar 2024 06:19:08 UTC
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A937110FD0D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 06:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=5diseppOo0OYwYEYaYXER+NWgXBkxLqz/W8jAzGerdA=; b=WLklMuoIkwwFLr8ffHvFL0XcOd
 gS22cgi6TuskD1LUctdGcf4YILT/ZL3/D2Iethcqb57VG3ohY+ZD3Qk1G9c0QxDoIrNHfuBZ30Cen
 S71MppFVaZNf4Tole89cvHXRmgs42SAkG05OLi3EXLHCksA2O81wp9+/BYY7X6DNYX5wI+sM2w34N
 Oc33ImEbVB6a5jf+zdwJBgkiH56MCPUXnJsfNWNL0EyPZYeGP3HFXlxx5o9dpP+8A6bJqYyltyvQ+
 4i5RC3t8ZA2MIq11xgH21bhbcd5m3ijhW7BjfDcpXxGancS12pytJcFNXtrACr3FmGdOyrHZvHonO
 iaMDzwLg==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rh1Jz-00000000e7U-27PH;
 Mon, 04 Mar 2024 05:57:07 +0000
Date: Mon, 4 Mar 2024 05:57:07 +0000
From: Matthew Wilcox <willy@infradead.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: Regression on linux-next (next-20240228)
Message-ID: <ZeVis2823T4YllDg@casper.infradead.org>
References: <SJ1PR11MB61292145F3B79DA58ADDDA63B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ1PR11MB61292145F3B79DA58ADDDA63B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On Mon, Mar 04, 2024 at 04:49:47AM +0000, Borah, Chaitanya Kumar wrote:
> After bisecting the tree, the following patch [4] seems to be the first "bad"
> commit
> 
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> commit ac7130117e8860081be88149061b5abb654d5759
> Author: Matthew Wilcox (Oracle) mailto:willy@infradead.org
> Date:   Tue Feb 27 17:42:41 2024 +0000
> 
>     mm: use free_unref_folios() in put_pages_list()
> 
>     Break up the list of folios into batches here so that the folios are more
>     likely to be cache hot when doing the rest of the processing.
> 
>     Link: https://lkml.kernel.org/r/20240227174254.710559-8-willy@infradead.org
>     Signed-off-by: Matthew Wilcox (Oracle) mailto:willy@infradead.org
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> 
> We could not revert the patch because of a build errors but resetting to the parent of the commit seems to fix the issue
> 
> Could you please check why the patch causes this regression and provide a fix if necessary?

Could you try putting the two:

-                       list_del(&folio->lru);

statements back in and see if that fixes it?
