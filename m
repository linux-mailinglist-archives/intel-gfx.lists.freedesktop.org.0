Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A4B3E22E0
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 07:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED6BC6EA26;
	Fri,  6 Aug 2021 05:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5DD66EA26;
 Fri,  6 Aug 2021 05:30:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="214041532"
X-IronPort-AV: E=Sophos;i="5.84,299,1620716400"; d="scan'208";a="214041532"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 22:30:30 -0700
X-IronPort-AV: E=Sophos;i="5.84,299,1620716400"; d="scan'208";a="481274630"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 05 Aug 2021 22:30:30 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: daniel.vetter@intel.com, chris.p.wilson@intel.com,
 thomas.hellstrom@intel.com, paulo.r.zanoni@intel.com
Date: Thu,  5 Aug 2021 22:30:30 -0700
Message-Id: <20210806053032.2462-1-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/2] drm/doc/rfc: i915 VM_BIND feature design +
 uapi
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

This is the i915 driver VM_BIND feature design RFC patch series along
with the required uapi definition and description of intended use cases.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

Niranjana Vishwanathapura (2):
  drm/doc/rfc: VM_BIND feature design document
  drm/doc/rfc: VM_BIND uapi definition

 Documentation/gpu/rfc/i915_vm_bind.h   | 113 +++++++++++++++++++++
 Documentation/gpu/rfc/i915_vm_bind.rst | 132 +++++++++++++++++++++++++
 Documentation/gpu/rfc/index.rst        |   4 +
 3 files changed, 249 insertions(+)
 create mode 100644 Documentation/gpu/rfc/i915_vm_bind.h
 create mode 100644 Documentation/gpu/rfc/i915_vm_bind.rst

-- 
2.21.0.rc0.32.g243a4c7e27

