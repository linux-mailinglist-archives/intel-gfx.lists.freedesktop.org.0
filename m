Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 220B5959FE5
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 16:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC2EC10E62C;
	Wed, 21 Aug 2024 14:31:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CI9dD5Hm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D176610E62A;
 Wed, 21 Aug 2024 14:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724250670; x=1755786670;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sUInZ81IUSp7Q05QwkqqKV/W194LU5uPsdp/r33OgOw=;
 b=CI9dD5HmmQWltgBg3s8QYA2UarhYZZ2A43ajSlZ6EsuyuYJ4wiNDhxUW
 0dkyH7/fTgS78dcSsxzGz4KINBQpzyAasb5PMvdgYgRaseOZwEQBZ0OdJ
 vh3Z6VjW5AJyHhxSnX0nTFHQDuhWUIhieq+X4MkML7TcJjRu4jhRyUwGV
 UdxvF9YraB6u3Sn7D/zzP+mqJccKEFxf2BCG9RciBv/U56qFsXNwGzPnJ
 sGBzxHScLQFy+hLcqarUr25O3JmI+wZeebPfazwt1yekgWSOYs3Unfmzs
 RCXUkEG8S8AsPLXUlPlJuDypfQ89p70JBtI0/L6HcLi8P8lAXWd4TX5nl A==;
X-CSE-ConnectionGUID: jkOu7CYTQs6LBR/d5rKMLw==
X-CSE-MsgGUID: nePPAfDpRJukQ5ZgEI6F+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22226347"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="22226347"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 07:30:56 -0700
X-CSE-ConnectionGUID: Yub93nl8T1adIXcyye8x3g==
X-CSE-MsgGUID: bvRn36bzTvS1wn0BYCU0FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65998039"
Received: from sbutnari-mobl1.ti.intel.com (HELO localhost) ([10.245.246.20])
 by orviesa005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2024 07:30:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com, matthew.d.roper@intel.com
Subject: Re: [PATCH v2] drm/i915/display: identify display steppings in
 display probe
In-Reply-To: <172424832093.2071.7215356235062692151@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <65e319048c369fbbd5018badfa24e457ca4e956e.1724180287.git.jani.nikula@intel.com>
 <20240821095036.2044654-1-jani.nikula@intel.com>
 <172424832093.2071.7215356235062692151@gjsousa-mobl2>
Date: Wed, 21 Aug 2024 17:30:48 +0300
Message-ID: <87msl63q3r.fsf@intel.com>
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

On Wed, 21 Aug 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-08-21 06:50:36-03:00)
>>+        if (revision < size && map[revision] != STEP_NONE) {
>>+                step = map[revision];
>>+        } else {
>>+                drm_warn(display->drm, "Unknown revision 0x%02x\n", revision);
>>+
>>+                /*
>>+                 * If we hit a gap in the revision to step map, use the information
>>+                 * for the next revision.
>>+                 *
>>+                 * This may be wrong in all sorts of ways, especially if the
>>+                 * steppings in the array are not monotonically increasing, but
>>+                 * it's better than defaulting to 0.
>>+                 */
>>+                while (revision < size && map[revision] == STEP_NONE)
>>+                        revision++;
>>+
>>+                if (revision < size) {
>>+                        drm_dbg_kms(display->drm, "Using display stepping for revision 0x%02x\n",
>>+                                    revision);
>>+                        step = map[revision];
>>+                } else {
>>+                        drm_dbg_kms(display->drm, "Using future display stepping\n");
>>+                        step = STEP_FUTURE;
>>+                }
>>+        }
>>+
>>+        drm_WARN_ON(display->drm, step == STEP_NONE);
>
> I believe we can be sure that step != STEP_NONE at this point. Are we
> keeping this only to guard against bugs from future changes?

Belt and suspenders, just making sure I didn't screw up anything. :)

BR,
Jani.

-- 
Jani Nikula, Intel
