Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0DE2EC3B6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 20:09:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09B69891B4;
	Wed,  6 Jan 2021 19:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03CEE89F1B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 19:09:50 +0000 (UTC)
IronPort-SDR: FmBYgWNFUgAi29qHL9q3LwFZFg5BkuG0oeYFDzwC7lQp4p6YYv7UkhV6/qSqVqhGbAIRmWOyOy
 NlaagMzcXp0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="156511292"
X-IronPort-AV: E=Sophos;i="5.79,327,1602572400"; d="scan'208";a="156511292"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 11:09:50 -0800
IronPort-SDR: Ao3rT7Dz9YpNqB2XTjOQD9TVPcY+HQ9cLOsgq9E/i8Qyg6WwhBDk7n7mgLEX5fhMahQpHlKzxE
 svL72pT6ke1Q==
X-IronPort-AV: E=Sophos;i="5.79,327,1602572400"; d="scan'208";a="379391290"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 11:09:48 -0800
Date: Wed, 6 Jan 2021 21:09:45 +0200
From: Imre Deak <imre.deak@intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20210106190945.GA213231@ideak-desk.fi.intel.com>
References: <20210106175301.GB202232@ideak-desk.fi.intel.com>
 <X/X7umSYEeKCZ0Dw@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X/X7umSYEeKCZ0Dw@kroah.com>
Subject: Re: [Intel-gfx] v5.10 stable backport request
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 06, 2021 at 07:04:42PM +0100, Greg KH wrote:
> On Wed, Jan 06, 2021 at 07:53:01PM +0200, Imre Deak wrote:
> > Stable team, please backport the upstream commit
> > 
> > 8f329967d596 ("drm/i915/tgl: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock")
> > 
> > to the v5.10 stable kernel.
> 
> I see no such commit id in Linus's kernel :(

Sorry, the commit id correctly is

0e2497e334de42dbaaee8e325241b5b5b34ede7e

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
