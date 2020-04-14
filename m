Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C3F1A8CA0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 22:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB58C6E179;
	Tue, 14 Apr 2020 20:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtprelay.hostedemail.com (smtprelay0213.hostedemail.com
 [216.40.44.213])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C93696E179
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 20:39:11 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 4ED6F18000894
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 20:39:09 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10, 1, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:46:150:153:355:379:599:966:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2196:2199:2393:2525:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3872:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4385:5007:6670:6691:8603:9025:10004:10400:10471:10848:11026:11232:11473:11657:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:13069:13095:13255:13311:13357:13439:13848:14096:14097:14659:14721:21080:21433:21451:21627:21660:21740:30045:30054:30055:30074:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: crime37_6cf62974ead4f
X-Filterd-Recvd-Size: 1731
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 20:39:08 +0000 (UTC)
Message-ID: <a262060cfa6afe51ddfb5d04ba84fef7809d7a4b.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Apr 2020 13:36:58 -0700
In-Reply-To: <158689622749.30378.6609839245945573925@emeril.freedesktop.org>
References: <20200413143224.22806-1-yanaijie@huawei.com>
 <158689622749.30378.6609839245945573925@emeril.freedesktop.org>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_Use_ARRAY=5FSIZE_instead_of_hardcoded_size_?=
 =?utf-8?b?KHJldjIp?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-04-14 at 20:30 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gvt: Use ARRAY_SIZE instead of hardcoded size (rev2)
> URL   : https://patchwork.freedesktop.org/series/75888/
> State : warning

This seems an odd message to receive as I was simply
making suggestions to the original submitter.

It's specifically _not_ signed-off.

> == Summary ==
> 
> $ dim checkpatch origin/drm-tip
> 7523f4bbc30d drm/i915/gvt: Use ARRAY_SIZE instead of hardcoded size
> -:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
> #16: 
> > diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
> 
> -:175: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)
> 
> total: 1 errors, 1 warnings, 0 checks, 127 lines checked
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
