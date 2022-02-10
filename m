Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D094B0D46
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 13:16:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011FE10E836;
	Thu, 10 Feb 2022 12:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C6A10E830;
 Thu, 10 Feb 2022 12:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644495396; x=1676031396;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Q3gJ3/BRAc5bL1wBvxiv4TXLE+qOMXsa6/+0zpr/euI=;
 b=Tjhdwt3KX2ZacksMgk1GPYo1isOfEOUWWbl5uocYBP9dP9k0Mrxvgb8h
 1QpKKEbPm7owSQ0iJizPwHxlLcuWNGfGnox/mLAavICIVZEKEViGdWYb6
 akkSx1TTcD85jJLpa50e2ebT59/XTl3RdvbxL5Inz9XsNHUN040DH0UCp
 3Yy1hc0UNzTPHsobH2r6p9HJUQv9cexzr/H7Jw6Y4LrUXjto3JYD2e7jL
 H9FHAXSW0Ssl/1OD5bsh+Znncwb21Ivdqnxvx8peUiY4zv0YMwFYV3Oxy
 /JsAkvfJrmNeJkglscuhpTp4TilgN8PfeS0DcPpIRyep8sLYYurJIbru/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="247060921"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="247060921"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="485664941"
Received: from paulbarr-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.11.226])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:34 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 12:12:58 +0000
Message-Id: <20220210121313.701004-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/15] Initial support for small BAR recovery
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Starting from DG2 we will have resizable BAR support for device local-memory,
but in some cases the final BAR size might still be smaller than the total
local-memory size. In such cases only part of local-memory will be CPU
accessible, while the remainder is only accessible via the GPU. This series adds
the basic enablers needed to ensure that the entire local-memory range is
usable.

Needs to be applied on top of Arun' in-progress series[1].

[1] https://patchwork.freedesktop.org/series/99430/

v2:
  - Various improvements and fixes as suggested by Thomas.

-- 
2.34.1

