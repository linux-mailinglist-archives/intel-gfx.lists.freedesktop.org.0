Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D36A26029C7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 13:02:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 532AC10EF13;
	Tue, 18 Oct 2022 11:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDD1510E69A
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 11:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666090933; x=1697626933;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=QedL/Fm3JdGkHbWDHcQs6YYpeRDxbzlUvsranEIlDVM=;
 b=afdX2za7ICsQxYED6yCGuTN9TwbTiyk1U67P4n6bAcVPER1zebkHnC7X
 zm8hPo/gRSuo7bnmr38jbhj+x5IPbTapy6KfyVeSLzc9WLEbvp/1xAp2m
 6lwu3HUTCFyRI2vSkZEl8RGqB4YJHasleZwUxWqnmM8Zua0+IzghdoKid
 MeZmtKA+OZw/FhH6PZ8sstM3OdmJp4OA08EfFpUka9/xe2fjMjH+PWFUM
 lXIPPdXiN1tbfeNWc5gElinZ2Gv5tFb9/+VMxZyd7pY5W/axUOxg4eLIs
 6hrIRl7R7qtVwNpJG7Dt/ES78Q8+F3yyQrLfsqi1twRpNOxxr6xMoDTS4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="306053537"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="306053537"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 04:02:13 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="771150865"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="771150865"
Received: from ineznano-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.44.87])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 04:02:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: stable@vger.kernel.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Tue, 18 Oct 2022 14:02:08 +0300
Message-ID: <87k04xiedr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Intel-gfx] v5.19 & v6.0 stable backport request
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
Cc: Hans de Goede <hdegoede@redhat.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hello stable team, please backport these two commits to stable kernels
v5.19 and v6.0:

4e78d6023c15 ("drm/i915/bios: Validate fp_timing terminator presence")
d3a7051841f0 ("drm/i915/bios: Use hardcoded fp_timing size for generating LFP data pointers")

References: https://lore.kernel.org/r/fac9a564-edff-db25-20d4-7146ae2a7dc8@redhat.com

Thanks,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
