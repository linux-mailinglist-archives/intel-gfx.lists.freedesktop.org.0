Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D814F5ED219
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09B0710E1F3;
	Wed, 28 Sep 2022 00:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B288A10E1EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 00:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664325621; x=1695861621;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jcWzkHlXGm3sykw4zLDCQaX6nTzlfJjM3yAeKTUgXAg=;
 b=VxKup8OnRoK9O2ImRCC2eqDetB4g1Gaewh6brRsnP6a+xNF7CWU7Xjxv
 LNXNf2rihZ9RW/e6ukUght2wb3McBFQAjfeaRJaXKVDHN/25IwX0SDsiB
 uuvg2FDbSTaUOqKpk3whDVauTERDeEIUowVOKZhfHAqGqdHhAOul/pGw8
 D1K1kW6f0eT6KTL8KNHu3PUYJYAVs551O9secQWGlwrnMC5KlwpelP6/P
 yJB2e+0XS6lo7Zi2Zixd3iTnGZgZ2TWwWjADQHYe9B3bplzsREoHX2B3o
 xO11kJU1OfV5DBfAQuf2Rvb0l5JGZ3HlVOW4rRxwbM6eDkYitPTtjwfHm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387752051"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="387752051"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:21 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572841160"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572841160"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:21 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 17:41:33 -0700
Message-Id: <20220928004145.745803-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 03/15] mei: adjust extended header kdocs
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

From: Tomas Winkler <tomas.winkler@intel.com>

Fix kdoc for struct mei_ext_hdr and mei_ext_begin().

Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/misc/mei/hw.h | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/misc/mei/hw.h b/drivers/misc/mei/hw.h
index 70d405c67f0e..319418ddf4fb 100644
--- a/drivers/misc/mei/hw.h
+++ b/drivers/misc/mei/hw.h
@@ -247,8 +247,7 @@ enum mei_ext_hdr_type {
  * struct mei_ext_hdr - extend header descriptor (TLV)
  * @type: enum mei_ext_hdr_type
  * @length: length excluding descriptor
- * @ext_payload: payload of the specific extended header
- * @hdr: place holder for actual header
+ * @data: the extended header payload
  */
 struct mei_ext_hdr {
 	u8 type;
@@ -287,12 +286,11 @@ struct mei_ext_hdr_vtag {
  * Extended header iterator functions
  */
 /**
- * mei_ext_hdr - extended header iterator begin
+ * mei_ext_begin - extended header iterator begin
  *
  * @meta: meta header of the extended header list
  *
- * Return:
- *     The first extended header
+ * Return: The first extended header
  */
 static inline struct mei_ext_hdr *mei_ext_begin(struct mei_ext_meta_hdr *meta)
 {
-- 
2.37.3

