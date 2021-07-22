Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 147E43D1ED8
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 09:21:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810A36EE20;
	Thu, 22 Jul 2021 07:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5D76EE18;
 Thu, 22 Jul 2021 07:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=II9VDk2bGBQcqDz1JdadrNxc8E93VszZnx5F4NY1PAw=; b=gzkV4pvqB4Ckl3l2ZUeZNkyii+
 i3a1ZuymtTya2qyNPG50yR2dojq9FW/0kL0qA68b8QOEM2EaimNcjCQkFUtehp76h+slQ8xZKNAfU
 0pfVu9MKPoX+AyKFJSCn7Mro0sdykKxGmvmQzIdI549MnmFr0d9cIMb48+a2nNa6m2bic8uiBEDsG
 7BULTm3W8TesYZmzsOlgp+BCHQAXrdzH+lD3hZogLip6Kwiee0+YwlbZY1YCkaYt7nbqbCrClHBnY
 2PRKP/LnC2VIFs3plwKARr+sHbJRX3OAIY6GbssSjfe2hn5k8ptYbsSp/TbxNzhWy9GL2bm4WoJb5
 tmYnjDMw==;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat
 Linux)) id 1m6T0U-009zcD-Nt; Thu, 22 Jul 2021 07:20:39 +0000
Date: Thu, 22 Jul 2021 08:20:34 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YPkcQqnRGZABpmce@infradead.org>
References: <YPgAuSt6Ps7w4/AI@infradead.org> <YPgD/8Y3/te/Hsu3@intel.com>
 <YPhApJo1o6yBYUh2@infradead.org> <YPiGI9tzLzGZg47j@infradead.org>
 <YPiPGv/wtnjsxSZy@intel.com> <YPjy/sYgy1SvZBD+@infradead.org>
 <20210722055523.e5tdgcledznyzmxt@ldmartin-desk2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210722055523.e5tdgcledznyzmxt@ldmartin-desk2>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-gfx] 5.14-rc2 warnings with kvmgvt
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
Cc: Christoph Hellwig <hch@infradead.org>, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 22, 2021 at 01:55:23AM -0400, Lucas De Marchi wrote:
> humn... PORT_F. KBL doesn't have PORT_F. We decided to keep the handling
> of DISPLAY_VER == 10 and DISPLAY_VER == 9 together and trust the VBT,
> but when the VBT is not present, DDI F will get added unconditio.
> 
> maybe best thing to do is to split that

With this and the previous patch the stack traces are gone.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
