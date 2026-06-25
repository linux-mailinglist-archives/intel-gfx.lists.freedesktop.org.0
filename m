Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jZX0H9EORWp26AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 505EB6EDAD9
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=google.com header.s=20251104 header.b=nPgGaDjQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=google.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C9C10EFB9;
	Wed,  1 Jul 2026 12:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f73.google.com (mail-qv1-f73.google.com
 [209.85.219.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC9710E21D
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 16:11:20 +0000 (UTC)
Received: by mail-qv1-f73.google.com with SMTP id
 6a1803df08f44-8dd6a429cb6so19686d6.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 09:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1782403879; x=1783008679;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=fN6nJqx26VtLTAWd5mMITPKoI2aS3irfqPoBFs2k1TE=;
 b=nPgGaDjQEEzQ2OqobMCqC9WGZbcavauEWyRUPrmM8sY/uzvbf1jmbuj1R+Ntd8UMOY
 w4M0JBOUDgspAO27h4vp9Uq1aOChqzxpAjbsh6pc401KwbEYOed4F9SG2Jdbk4ibTNaC
 +nOzyIfBjXZzg5Cs3RqOKg05ZOdI5utmplw7+6xs95bRWS/XvWFeLNJ1MsXkaGv5XOFP
 i2YY9qnT7gWNgjK58uuT8ZSZbZpDm7p4uCPFyh3FCjVhagdCcoaCxWDoE2byUO3Ve6eB
 dqP46cKjNKzuTlq3Yl2Cem6MRMjrPIdHtt9El8ptwjyKNHrmHboXUGloNH0uBukstm+I
 I9fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782403879; x=1783008679;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fN6nJqx26VtLTAWd5mMITPKoI2aS3irfqPoBFs2k1TE=;
 b=pD6Yi8zkKc07bIlPVA6TeF0/ElTh6I7qN20bwWsi/cBwEx3+7TZ+N97fnu2tAYlnOE
 5fu0btLJuLJBGMCXBlP4xM5BeKZs4iG4aGmiJ5t/6dNlsernVqITs7Y4rzwnc48M4trQ
 a5IAtjQmLbnfaYbzvgsqis5O+eK1dt4vyahVQS+Zp7/756AVkkZYzGfmFkOVrX5X2Xfx
 jc2Tfh+B3s6UE6lR66VOUcFijy3zrF76D098kVhSwHZEiISvF2n8ZmBAhkctg+z0dKT0
 uj1+PVaUa5POuJ0JvwP0jB/zMMnwyY2V8cRyunIGBjrZS5Nv2Ke2pnqkl9x+aEC41dBI
 KUpg==
X-Gm-Message-State: AOJu0YyWst1wa+DLKlyIzwKVC43Hd8mwS9M2w1TpIawJ3mX6lthNKFLa
 B4V8fVQuOwfLOy37Ue/Fx4u+BPCj66TDcgNro9s7mOrPB9M28QvYeuQuItFhPYni2y4uWsez5rg
 319HpgECdob0Go5Be6DPIcRBD5CFGiHS3rKVOJ3U1b+ukfcoMsSUdxosAw9+TBAwsFvnW9/wTbm
 enU7KyPmbKMI+0gtsc7KGOpvZdu6Hf6JdRdfxchdRPVIUARIKrKNNo2FOPhnY=
X-Received: from qvoh2.prod.google.com ([2002:a0c:f8c2:0:b0:8a2:cf66:d55a])
 (user=gildekel job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6214:f2d:b0:8de:1d32:bb5d with SMTP id
 6a1803df08f44-8e6d5e9e66cmr49004816d6.3.1782403877055; 
 Thu, 25 Jun 2026 09:11:17 -0700 (PDT)
Date: Thu, 25 Jun 2026 12:10:25 -0400
Mime-Version: 1.0
X-Mailer: git-send-email 2.55.0.rc0.799.gd6f94ed593-goog
Message-ID: <20260625161104.2893517-1-gildekel@google.com>
Subject: [PATCH 0/2] drm/i915/display: Enable HDR over DP MST
From: Gil Dekel <gildekel@google.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, khaled.almahallawy@intel.com, 
 navaremanasi@google.com, Gil Dekel <gildekel@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:57:46 +0000
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.19 / 15.00];
	DATE_IN_PAST(1.00)[140];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[gildekel@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 505EB6EDAD9

Currently, the Intel display driver does not support HDR over DP MST
connections. This series enables this functionality.

To achieve this:
1. We refactor colorimetry capability queries to query and cache the value
   on a per-connector basis (for both SST and MST downstream sinks)
   instead of checking the root port's DPCD register directly (which returns
   false for MST hubs).
2. We update the MST stream configuration to compute the required VSC and
   HDR metadata SDPs.
3. We set the transcoder's Video DIP registers on stream enable and during
   fastsets (update_pipe) to propagate HDR metadata changes without forcing
   a full modeset.
4. We expose the max_bpc, HDR metadata, and DP Colorspace properties on
   MST connectors.

Gil Dekel (2):
  drm/i915/display: Cache DP colorimetry support per-connector
  drm/i915/display/mst: Enable HDR over DP MST

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 27 +++++++----
 drivers/gpu/drm/i915/display/intel_dp.h       |  8 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 47 +++++++++++++++++--
 4 files changed, 71 insertions(+), 12 deletions(-)

-- 
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics

