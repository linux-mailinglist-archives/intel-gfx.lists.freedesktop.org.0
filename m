Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2792372703
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 10:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E23F6EA9F;
	Tue,  4 May 2021 08:14:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 571D46EAA7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 08:14:10 +0000 (UTC)
IronPort-SDR: ZNIYqqPKKGOo5fMYpbvUSzaWnVm638IEZR8wt3RzW7ur84B1Z3MbS7NoqlMrryO451z908Z/h6
 fZfa7WUpIAOQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="197980844"
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="197980844"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 01:14:09 -0700
IronPort-SDR: PzjhQVrpWBiz5iemrwtYAxHmvHJbrHTKjwQnOguqunyzgke3fiuY5imTj2QC9CDF+e/AtwO8dc
 l3TzklljfISw==
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="433166264"
Received: from radwanib-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 01:14:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 May 2021 11:13:59 +0300
Message-Id: <cover.1620115982.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/audio: a few cleanups
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Found these forgotten in a branch...

Jani Nikula (2):
  drm/i915/audio: simplify, don't mask out in all branches
  drm/i915/audio: fix indentation, remove extra braces

 drivers/gpu/drm/i915/display/intel_audio.c | 27 ++++++++--------------
 1 file changed, 10 insertions(+), 17 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
