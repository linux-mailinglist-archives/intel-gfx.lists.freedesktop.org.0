Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F9B420985
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 12:51:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D4CE6E9C1;
	Mon,  4 Oct 2021 10:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E63B6E9C1
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 10:51:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="311580809"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="311580809"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 03:51:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="482892331"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 04 Oct 2021 03:51:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Oct 2021 13:51:34 +0300
Date: Mon, 4 Oct 2021 13:51:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Sean Paul <seanpaul@chromium.org>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Ramalingam C <ramalingam.c@intel.com>, Karthik B S <karthik.b.s@intel.com>
Message-ID: <YVrctgdJ8EYdW9i0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Patchwork-Hint: comment
Subject: [Intel-gfx] i915 MST HDCP code looks broken
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

Hi,

I took a quick peek at intel_dp_add_mst_connector() the other day and
noticed that it calls intel_dp_hdcp_init() and passes in the SST
dig_port. And digging in a bit further that seems to clobber all
kinds of things in dig_port->hdcp_port_data. This looks rather
broken to me.

So has anyone actually thought what happens if you first use
MST on the port, and then later switch to SST on the same port?

-- 
Ville Syrjälä
Intel
