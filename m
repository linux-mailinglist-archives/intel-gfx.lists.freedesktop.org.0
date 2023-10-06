Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED6D7BC028
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 22:17:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3A9010E563;
	Fri,  6 Oct 2023 20:17:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A0610E564
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 20:17:47 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-573e67cc6eeso1819381a12.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Oct 2023 13:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1696623467; x=1697228267;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=A77BC7QX8Slsx+Ll7LU4L519A9TQl4V4ehtBrSUIzrM=;
 b=Y/m7OeMiCRIk2dsqrf9T6YJZmVVCgohaGTd81ygHeCRdy2NGT1WfAEqmWxRZrCuqGN
 XwyuLuGAZWO7dox82+m6ZMTQFPtTuC2BfQTcgiKanjDkpjChzeDtEGW+rpdyMif4yLDF
 DpkDQw0bk9mitlCffDotL7PMMifD1MBkNMUbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696623467; x=1697228267;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=A77BC7QX8Slsx+Ll7LU4L519A9TQl4V4ehtBrSUIzrM=;
 b=M0TTRTWjG+hf+et+P3kdtitaMinJgQ3kqmqvhot8EiQCeGqXZQDK0sGyTuGnzKaJ0v
 snQEZhlyT230ry/NpN5JcmUJQpi/Tf7in8JN6/an2T/PojyU3x0cByGUI2iDxEjo3rsO
 E52UbhmtE5jtELi17Nz8udMpM0qiR7vnIe/qFkPo+9GmN2fpwNYcGPLI0tDccA4tqoGx
 +UHxSwKq8hFZu/w+jpMtpg1fs3nmJ9pBqtI3ckqCVBfn1a0rebdIAY1VY41pOkTp8Wm2
 zl57Bh/P/kaTzvLzLl3xr3TNTQ5Ed6aUSGbywnJnRWF8xjt5fkX3YgZpaGTpHJTFwq+v
 VSsw==
X-Gm-Message-State: AOJu0YwkaV/mJuGIQCQ0ZYeta3osrdzcIqwHRHNw9tb9iKF3a26pRgug
 GBkYSQj9Ii8Nu9PbwBVIOS5wMQ==
X-Google-Smtp-Source: AGHT+IGEI5no6IBRuxIIDAhkvTSvtsL8/uH21708qo7BPmv0WezMW5LyC1Lyp/b5nVHceMli3W0oSQ==
X-Received: by 2002:a05:6a21:3294:b0:16b:8572:5a4a with SMTP id
 yt20-20020a056a21329400b0016b85725a4amr3266606pzb.61.1696623467330; 
 Fri, 06 Oct 2023 13:17:47 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 a23-20020a656417000000b005898c8caee3sm1648955pgv.30.2023.10.06.13.17.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Oct 2023 13:17:46 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Date: Fri,  6 Oct 2023 13:17:45 -0700
Message-Id: <20231006201744.work.135-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1706; i=keescook@chromium.org; 
 h=from:subject:message-id;
 bh=hfOPKMbt1kpgmTXk+IkFUv+LIQHu3WxQ85BLA+j39zk=; 
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBlIGtoRE75uVdefxFjupuMMe0I9OTzEzXxNkbpt
 Mqtn/fIxmuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCZSBraAAKCRCJcvTf3G3A
 JsbYEACIjnXC26TRyjqe/0XWkVlFq8iUwQznZxL2nYr71KqzJo7xxRVqvbDairu1uyWkYlykJY1
 kzgJsioAawovDGi2WulfUyJJz+El41D1UlndyRYdC51Cd5QQBOyD3c8o9VvGFuESblrrl4NSvSy
 3m3RtEpfHAf2jD06tgBw+JDlLyNSUA9xbUf7CpCZwb6ii/JBNo6LwdbfC0s3PhT+DCjc1KEJBru
 f1D/ILZwWFEOzjiUQrRqlI3knZeHJNX/naWBjHRCQ06a3k03bxBwLrEOVUaJTEfouhXMQ/e0Vyw
 L8WPx4oAmc2jZktsESGFsciiAMduhLe1Pg+kNMFKeRhK7HZGoPkWBU6bTSdW81Za4g/eiZ/Wn06
 dnS24kWZENnfXtCkJhTUVO9gvpt+55FECMcTrpbC514WTeNhLxdEm+VCxucKdwyu5ESU82wsNDF
 XReLmc/Xq4yADXdU2p7jtMbNnGSd2LOploXFLd49VU8MSVuTbC+xMIXEga+cfVe3WGRzMLGqJGB
 cxKbEz8P7g+kp4k7wITnztl62lr3/mnTn5EYu2kkMXKPGIppa4h6rJ0KfCGu0vqMtNRmpCxO47K
 1v3sG/hPAcXC91EScYf5WstnOgdVKZvXShDQ0I7beJ6/+MpM4EBeY5CmZ85YUrxS5a+uafYPqms
 EE3Lf0b zByqJ28g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Annotate struct ct_incoming_msg
 with __counted_by
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
Cc: Nick Desaulniers <ndesaulniers@google.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 David Airlie <airlied@gmail.com>, Tom Rix <trix@redhat.com>,
 llvm@lists.linux.dev, Kees Cook <keescook@chromium.org>,
 intel-gfx@lists.freedesktop.org, Nathan Chancellor <nathan@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Roper <matthew.d.roper@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prepare for the coming implementation by GCC and Clang of the __counted_by
attribute. Flexible array members annotated with __counted_by can have
their accesses bounds-checked at run-time via CONFIG_UBSAN_BOUNDS (for
array indexing) and CONFIG_FORTIFY_SOURCE (for strcpy/memcpy-family
functions).

As found with Coccinelle[1], add __counted_by for struct ct_incoming_msg.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-hardening@vger.kernel.org
Link: https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/counted_by.cocci [1]
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 6e22af31513a..c33210ead1ef 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -96,7 +96,7 @@ struct ct_request {
 struct ct_incoming_msg {
 	struct list_head link;
 	u32 size;
-	u32 msg[];
+	u32 msg[] __counted_by(size);
 };
 
 enum { CTB_SEND = 0, CTB_RECV = 1 };
-- 
2.34.1

