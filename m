Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ACB8FFDCC
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 10:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CCED10EB86;
	Fri,  7 Jun 2024 08:07:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="baVMvBUn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAEE910EB8D;
 Fri,  7 Jun 2024 08:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717747633; x=1749283633;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kghIIx4wvZ5com5kFcixZU9s29bZK6YJdALSit1dXM0=;
 b=baVMvBUnQThT8rDWhMe2CuRW6hlOC6ymrELdfHk2m1pgPzM26hwAxEnA
 47fTKFTFOcll8mmqkFuBUigyw+W+YnqyGr+xRXQY37kL4ODAaFG4eiRje
 y5sevq+UlD+V1WA4E6Fix1QvcC4AE66JSq3kvUTZgiCgEULMVCwNNn/hI
 e4zYMUykvBmv7ECA2hVtj6m1jZ5jR4x2A/sJzqTJHaTD35nkdc54p00Q7
 ybFbZWvDW3LuGbublQnYADh17wvpxbwgrj6yIpoGYQmcNMNxubgqlLyzW
 NN6oESZxaL2B16QCLj2XNKtb6U7Wvne/gQyKw8q1Sf2O7axgxxIYynJyv A==;
X-CSE-ConnectionGUID: 31iFKGjITCOiooUlSYF3TA==
X-CSE-MsgGUID: BlLlBeylSJ613KmfbtZuKg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18310252"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="18310252"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 01:07:12 -0700
X-CSE-ConnectionGUID: KMIJbqU9ReOWR+MjyIClrA==
X-CSE-MsgGUID: hIZxFZjHRmWlI/oFhEwP1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="42704869"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.72])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 01:07:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/2] drm/i915 & drm/xe: drop ACPI_BUTTON
Date: Fri,  7 Jun 2024 11:07:05 +0300
Message-Id: <cover.1717747542.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Both in a series because they're related, but they should be merged via
their own driver trees.

Jani Nikula (2):
  drm/i915: do not select ACPI_BUTTON
  drm/xe: do not select ACPI_BUTTON

 drivers/gpu/drm/i915/Kconfig | 1 -
 drivers/gpu/drm/xe/Kconfig   | 1 -
 2 files changed, 2 deletions(-)

-- 
2.39.2

