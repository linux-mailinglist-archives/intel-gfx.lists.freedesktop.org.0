Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F018854D1F3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 21:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF51112AB7;
	Wed, 15 Jun 2022 19:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com
 (mailrelay2-1.pub.mailoutpod1-cph3.one.com [46.30.210.183])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F4E5112AB7
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 19:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=in-reply-to:content-transfer-encoding:content-type:mime-version:references:
 message-id:subject:cc:to:from:date:from;
 bh=Mrje/iCarzjltiVI/3Vgl8pa+QlLtIEw/rCNOFv840I=;
 b=FBRtA/QbrHrCXHFDd4BPcpqapOhFOoH86StftLs3/+vCkh2yOpVOTHTpk/bb9AxVSQ/qLAPbaxZOi
 6qJX3x/FYm6n7xwQDtIyOQ6IiFqakv5ohpGIutrKaLP1cMvNwYocmrzjrnYLsqmqqpKfbD7XZ2RJvz
 9auf4fLzWK1LSSPzVEZlMxYFQemp4VaG2tVaHiGthnqazUryXHSSCbWyGIH0YmEphMZTDEO7ONCPKk
 ATXQED7f6Q4QtzLW3sqwFfVmZHWKme3kK9xCpuFJMQHxfL1n3NoiR0BZNbwNq2HAfu9noBW5w4Sn43
 Rz0+iyV6suzaTaYbU87fYGOgXtTMgKQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=in-reply-to:content-transfer-encoding:content-type:mime-version:references:
 message-id:subject:cc:to:from:date:from;
 bh=Mrje/iCarzjltiVI/3Vgl8pa+QlLtIEw/rCNOFv840I=;
 b=ZrR01M3+2i1yS9THtzOJ4kKgr0opNMOCB7TME9WF7nYdHKggOg2F2bDBllh/qYXu5h9z/cyvLbbTO
 0OUMiANAA==
X-HalOne-Cookie: a7e9974b99bf484a5182b725533945c65ae71c8f
X-HalOne-ID: 31b312d9-ece4-11ec-a913-d0431ea8a290
Received: from mailproxy3.cst.dirpod3-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id 31b312d9-ece4-11ec-a913-d0431ea8a290;
 Wed, 15 Jun 2022 19:48:57 +0000 (UTC)
Date: Wed, 15 Jun 2022 21:48:55 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Yqo3pyhpeR0CRktk@ravnborg.org>
References: <20220613200317.11305-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220613200317.11305-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/8] drm: Clean up drm_crtc.h
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

On Mon, Jun 13, 2022 at 11:03:09PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Eliminate unnecessary includes from drm_crtc.h to avoid
> pointless rebuilds of the entire universe when touching
> some random header.
> 
> I didn't really feel like splitting this up per-driver since
> that would have ended up being metric ton of one liners.
> I'm thinking the conflicts (if any) should be trivial enough
> to deal with even with bigger patches.

Thanks for doing this!

I would have been fine with a single bigger commit, as this
is tedious manually jobs.
It really does not make much sense if there is added 1 or 4 includes
files when reviewing.
And the bots will tell if build is broken somewhere.

If we relax a little in the patch granularity, the chances we will see
more similar cleanups are higher.

I looked at a few - for the rest I trust the robots.
So with the reported builderrros fixed and my alphabetic order comment
addressed, then the full series are:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

	Sam
