Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ADF59F735
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 12:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6483510E8E1;
	Wed, 24 Aug 2022 10:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C90B010E237
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 10:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661335999; x=1692871999;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+fZVRzPbpTAtqGAU/gLhiJ7BaC7lY7zzV6f5JgahGGs=;
 b=ZNupVB4B9laotSK13wiNLHCPXNIKUWOc0w46ntuZ/6Gp80k6R7LgIlOs
 07E2LYFO+RP8a7HYqPeFTZcDucdKOTYO1jfsOJN1dfpgTelxvKe/NIgGr
 spFr3uaEIZWeP85druC6n7Jgw86Hbvqm5OVui2mtHAADJ3ygBxiNkgq3g
 6JsjtXeiuvx1hJjGOF68/0b5PvalEcr96BKJ9eO/KgEdu2tADE6Rfph7Q
 yzUruFCe7D5b7zBFQw9awjIY5m1RWmmWbXM0qEjdHpEQa/OUuGRdmj+2T
 X+Ku0r9oEEyAXjEv0gDIe6pgsdBzfwlf/VGm+g+4g1pJC3n51KaMM8n7Y w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="380218562"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="380218562"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 03:13:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="670441685"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 03:13:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660910433.git.jani.nikula@intel.com>
Date: Wed, 24 Aug 2022 13:13:15 +0300
Message-ID: <874jy2j6f8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 00/14] drm/i915: stop modifying "const"
 device info
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

On Fri, 19 Aug 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> v3 of https://patchwork.freedesktop.org/series/105358/
>
> Add a patch resolving guc time stamp logging related conflicts in the
> front, and remove the last two patches, for now, to avoid any
> potentially regressing functional changes. Leave them for later.

Thanks for the reviews, patches 2-14 pushed to drm-intel-next.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
