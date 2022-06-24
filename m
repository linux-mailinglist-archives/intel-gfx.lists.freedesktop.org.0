Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 298155591DB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 07:32:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 103C010FBD8;
	Fri, 24 Jun 2022 05:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4874B10FBCE;
 Fri, 24 Jun 2022 05:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656048749; x=1687584749;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=klproa5Uwe+koaUTCxI+EoP3ReBDm2ImgDdYuG6Q7O4=;
 b=cdUTk42KWjsZCGPGfGtirT6l0x4BcYAW5JBaBIu9xl3VRa9tIwGN4QPF
 U9eb49eA97rxFMPez0hMuT8csv5SykscPigNMYo1U8wCGdEf7P0XbyaB+
 SosYvc6Z+wVhqU1aSViLiUTyRf0cuTFFvax0b7Ttt6plfwcOh+CCFVt+x
 PxhrAKa5IYmHh1unXfi4+Xx4A9xHVQWsTUhsLFr5T50/VyePQf565p3U6
 CDDkq84smaLcedpb4YgvMH1I8pc/95WxaaefyOfAsTVAFpCse+F0t7mSg
 hRXILUpBFWO/9RwdQvYSJMr5kUrH6bFxUAtDFi6xUUHjt/uVklbXDSHws Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="282009765"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="282009765"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 22:32:28 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="645115227"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 23 Jun 2022 22:32:28 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 23 Jun 2022 22:32:05 -0700
Message-Id: <20220624053208.23723-1-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/3] drm/doc/rfc: i915 VM_BIND feature design
 + uapi
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
Cc: paulo.r.zanoni@intel.com, chris.p.wilson@intel.com,
 thomas.hellstrom@intel.com, matthew.auld@intel.com, daniel.vetter@intel.com,
 christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is the i915 driver VM_BIND feature design RFC patch series along
with the required uapi definition and description of intended use cases.

v2: Reduce the scope to simple Mesa use case.
    Remove all compute related uapi, vm_bind/unbind queue support and
    only support a timeline out fence instead of an in/out timeline
    fence array.
v3: Expand documentation on dma-resv usage, TLB flushing, execbuf3 and
    VM_UNBIND. Add FENCE_VALID and TLB_FLUSH flags.
v4: Remove I915_GEM_VM_BIND_TLB_FLUSH flag and add additional
    uapi documentation for vm_bind/unbind.
v5: Update TLB flushing documentation.
    Add version support to stage implementation.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

Niranjana Vishwanathapura (3):
  drm/doc/rfc: VM_BIND feature design document
  drm/i915: Update i915 uapi documentation
  drm/doc/rfc: VM_BIND uapi definition

 Documentation/gpu/rfc/i915_vm_bind.h   | 256 +++++++++++++++++++++++++
 Documentation/gpu/rfc/i915_vm_bind.rst | 246 ++++++++++++++++++++++++
 Documentation/gpu/rfc/index.rst        |   4 +
 include/uapi/drm/i915_drm.h            | 205 +++++++++++++++-----
 4 files changed, 666 insertions(+), 45 deletions(-)
 create mode 100644 Documentation/gpu/rfc/i915_vm_bind.h
 create mode 100644 Documentation/gpu/rfc/i915_vm_bind.rst

-- 
2.21.0.rc0.32.g243a4c7e27

