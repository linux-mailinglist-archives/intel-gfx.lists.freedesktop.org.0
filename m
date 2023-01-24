Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40615679DEC
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 16:48:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B528810E6BC;
	Tue, 24 Jan 2023 15:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EAE110E6C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 15:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674575292; x=1706111292;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=NZX1XswjGTa5tW61Md/AGLEZAIMXQBL2r0SR7aa95EE=;
 b=ODqA1cGG7Y2FRDYO5YSGiMBVqKeow9oDza0Q7YjOlOASFTEknIZ8vm/z
 zwnBBot1Vmcb+fpZpaDvnw7X1UKiQuW36tkOB/Mpe1XnBbj/8FNYylsFz
 uumuQpyKD7b9qDIfPOMypDFQ81PDZo6HinG1+pzIQz84G1zRHAPeQxkxc
 mSRv9QPlFa4POPvZ/vv537Sl6ErGjtPIixYNyLyweyk+fnNGTRHT7TdZL
 WMKgMhDmj5VdIHRidRXpFjUGAYvFnMAgkVvDlz2mySupZdRu8IqQ4E7jW
 0rxfNRGDGJjr8O3zbga5aAWrIL12CUKmdPaQ3rFEZv1gHnNzI5Ln5MfxY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="327580794"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="327580794"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 07:48:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="730723888"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="730723888"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.57.197])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 07:47:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: stable@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Tue, 24 Jan 2023 17:47:54 +0200
Message-ID: <878rhs6ij9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Intel-gfx] v6.1 stable backport request
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Stable team, please backport these two commits to v6.1:

2bd0db4b3f0b ("drm/i915: Allow panel fixed modes to have differing sync polarities")
55cfeecc2197 ("drm/i915: Allow alternate fixed modes always for eDP")

Reference for posterity: https://gitlab.freedesktop.org/drm/intel/-/issues/7841


Thanks,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
