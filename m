Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FFA36D581
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 12:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A18A6EB0C;
	Wed, 28 Apr 2021 10:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDBFD6EB0D
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 10:14:36 +0000 (UTC)
IronPort-SDR: iJm1g360Ze0X4AxpghqGyjIFyvi8l1KhAvLd9nATqSNHNuvHw8pFoOoYCtHk8khLwy9FEuZtDr
 I4nedHionGEA==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="196260432"
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; d="scan'208";a="196260432"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 03:14:36 -0700
IronPort-SDR: pK8X4ufbJlLwyAdLt6agRwsRePn964mw+fUahaH88OeaNmoPVHKaaEDxxOEfy/buIE5BQqR2F0
 StVoy5fv5obA==
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; d="scan'208";a="430229366"
Received: from ajalsove-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.39.247])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 03:14:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Apr 2021 13:14:27 +0300
Message-Id: <cover.1619604743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/backlight: use unique backlight
 device names
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

djEgYWZ0ZXIgdGhlIFJGQyBbMV0uIFVzZSBpbnRlbF9iYWNrbGlnaHQgZmlyc3QsIGZhbGwgYmFj
ayB0byB1bmlxdWUKbmFtZXMgZm9yIHN1YnNlcXVlbnQgYmFja2xpZ2h0IGRldmljZXMuCgpCUiwK
SmFuaS4KCgpbMV0gaHR0cDovL2xvcmUua2VybmVsLm9yZy9yLzIwMjEwNDA3MDkwODEyLjM2MDIt
MS1qYW5pLm5pa3VsYUBpbnRlbC5jb20KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgoKSmFuaSBOaWt1bGEgKDIpOgogIGRybS9pOTE1L2JhY2tsaWdo
dDogY2xlYW4gdXAgYmFja2xpZ2h0IGRldmljZSByZWdpc3RlcgogIGRybS9pOTE1L2JhY2tsaWdo
dDogdXNlIHVuaXF1ZSBiYWNrbGlnaHQgZGV2aWNlIG5hbWVzCgogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIHwgNTYgKysrKysrKysrKysrKysrLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
