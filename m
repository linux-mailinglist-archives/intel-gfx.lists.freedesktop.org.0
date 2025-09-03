Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B35ACB416FC
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 09:40:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B34D10E44C;
	Wed,  3 Sep 2025 07:40:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kSXtlnV6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7F6610E431;
 Wed,  3 Sep 2025 07:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756885256; x=1788421256;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pGRyEMc/n6r0TT2P/ikauj8rbduH6GRTEgaIds3+giw=;
 b=kSXtlnV6AxBUj7z0TEk2cnbzywFmBsLs1aSnZYjodd0oBzNnS/xOwkOe
 ZtEoFg7lP4guQLMSe7KXZdytocO1vfygEXFiQi12/9v33VW7MuTNjITbc
 ApKypFW8G3nDHpkxbqc6eWgdul+4FrUXvnOk2ZjOL3ueguIZopA35hz64
 eF9DzkUPNCY0VOlbVtWA3QRoQGmHlFA9gjqZq7Ut3L7gXk4pJgdl/ZEzf
 vHxPJec/QbXWgbIcDl9WY0zQfk4O9lz/E/uf8YngNdnPXJ+ySiAeq3WDW
 w8aWmVg9i0+5ceYdk9MgIUjIvCHkR2HyTWBNG87kbox3Rj6uqLhSblDS+ w==;
X-CSE-ConnectionGUID: DLdxYAiYTCqdo8qKsNDbYA==
X-CSE-MsgGUID: OCouC9xKSuCUSQpvhgqV5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="61828002"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="61828002"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 00:40:55 -0700
X-CSE-ConnectionGUID: PaRzq98zRKa4xbtYR6OOzQ==
X-CSE-MsgGUID: gcV69sq9R/SGwiy0oHV9Kg==
X-ExtLoop1: 1
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 00:40:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Cc: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction
 for ADL+
In-Reply-To: <CH0PR11MB5444E377ECA3214907F2BBF5E506A@CH0PR11MB5444.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902113538.269338-1-uma.shankar@intel.com>
 <20250902113538.269338-2-uma.shankar@intel.com>
 <CH0PR11MB5444E377ECA3214907F2BBF5E506A@CH0PR11MB5444.namprd11.prod.outlook.com>
Date: Wed, 03 Sep 2025 10:40:48 +0300
Message-ID: <6b7b3f91e48866d1ce0aa680faa3a44e0b63e45b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 02 Sep 2025, "Cavitt, Jonathan" <jonathan.cavitt@intel.com> wrote:
> Reviewed-bys should go below Signed-off-bys.

Mmh, I don't think there's a hard and fast rule about that one.

When applying patches, I usually go by what b4 does.

But when sending patches that have previously been reviewed, I usually
stick the Signed-off-by at the bottom instead. And I think that's quite
common practise.


BR,
Jani.


-- 
Jani Nikula, Intel
