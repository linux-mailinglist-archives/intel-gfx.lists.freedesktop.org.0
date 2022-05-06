Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7FC51DF80
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 21:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 876B010E1A2;
	Fri,  6 May 2022 19:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E4B210E1A2
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 19:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651864152; x=1683400152;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=44cJdTS+nKkqwnOacGfXBrAFWlG/dil/RtKxTskExr8=;
 b=i3931JGfOqcWWddNgWlJg6HYPakAj0jJ59j4gqS2hVYSplv+2rdlBUjf
 ygNW8+4s6tmEkEo5C/sK1GxU+AjQA4QGIl+Ng+UIVMXzy7T1jjFFqVfwq
 JbgG0wUAF9lxIZ6HV/hP4frN+zunhEnJqn0uC33t/NHO1tRlyJz4nHACU
 TfKS0D7KuvU7I23G5WJiAGdTfE/MIQ3kSVJ0Op/bmdDz4iD6UFDfJRMiH
 dVUSbaP2uftz1Qy5IFS5DbPPI/DN3501yS1QGVG3gHemPd5M5hcl9cr8J
 oEky1NVCKs/uMpPuTKWPWO+x650Tm0iBudi/gTV8i1+DJhXgq8eda/WK8 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="331543143"
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="331543143"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 12:09:11 -0700
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="654825044"
Received: from awvttdev-05.aw.intel.com ([10.228.212.156])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 12:09:11 -0700
From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
To: intel-gfx@lists.freedesktop.org,
	airlied@linux.ie,
	daniel@ffwll.ch
Date: Fri,  6 May 2022 15:08:45 -0400
Message-Id: <20220506190847.480320-1-michael.j.ruhl@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] i915 dmabuf cleanup
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While studying this code I noticed a few inconsistencies and possible
cleanups.

Please consider these patches.


