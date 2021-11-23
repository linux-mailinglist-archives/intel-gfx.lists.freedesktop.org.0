Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C678B459926
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 01:25:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93D2489C9B;
	Tue, 23 Nov 2021 00:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42F489C9B
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 00:25:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="234863813"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="234863813"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 16:25:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="538059583"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 22 Nov 2021 16:25:15 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 16:25:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 22 Nov 2021 16:25:14 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 22 Nov 2021 16:25:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TVeZC8NKFE5VPR93wqiEMbaECjCodLtVJ2XP3JW2IG7T47k0+0c+jy5N1AUIxEpgE84WQLZ/5H1DMcKC6MHbELIA3G5JScjQpFqZtG3N+5ILUl6ArP+bJ9kLFgXSc1gVEETGuvX1w9CqfgqArdYVOzkbc9oyRkQ7uw9eeE5JlVmFg5PUuGXRUJKcd8XFmdq1pP2UsytMbDN9n8uZIH4jMFCQzlRHCDDJu0+px4lNRbA0r7weKh4gTfFINO4xA0Omz7LFGSZ9kbQSZHJl50ppeKo+cEPZos8vIGpcmKIMNPjAqqMtpE5tURlprz7syoWh09KcaX5ZP+QzeSlC961d8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BIhqe5ctYYQ4XpmZfpOce4JjyzxuKUp+YG/oZDBq9JA=;
 b=fg7tuY5FKAIpcxX8fLmueYiKpWp9fqOeLLy7r+rrvQrB2lgcV/5/29yqSS10UY3+A1NJJ86HONVGwIyI3h5h8fGJtbheFnfGlhbuBp90lYrgt3NBNEkBPeDZ8G81p9RNxyus83Foa2w37P0CCTYoXniMYLLVSQhgeHMha/0JqjGHcJBuYVIwfmWlA2SPJhS92/lxwGZhfMPfPe63ZT759SsnoBHBqDbTwsnWFdBkPX96bPOOGRUcDqNid6VU4RTZKirBP/Y64BXFDfxl8opRZW3Qd1kDSeJ7qbz72vojA0U3NXSOapJnL07FQ9XiN8znN9A2Ggwd5OVjL2nz1EVVOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BIhqe5ctYYQ4XpmZfpOce4JjyzxuKUp+YG/oZDBq9JA=;
 b=lm3a5vz7573DAtL3QXzmLKewBSBsPfpzhbb2aaXh9JhLdfGk4rJlyNFDXa8FQT8fqiWBoE1BJQU1+8FutYJYPWl71iNqoZsQzX8X5w1q+QvLKDmKy/cMNiNxoZiaIdQ/jaaC08xyRh+kxrtVOfETPLHN05DUgZrX815PeC2kqZA=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BYAPR11MB2567.namprd11.prod.outlook.com (2603:10b6:a02:c5::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Tue, 23 Nov
 2021 00:25:13 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14%6]) with mapi id 15.20.4690.027; Tue, 23 Nov 2021
 00:25:13 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 7/7] drm/i915/guc: Print the GuC error capture output
 register list.
Thread-Index: AQHX3/Ueewn73SRF5061jq6P87GJy6wQQLCw
Date: Tue, 23 Nov 2021 00:25:13 +0000
Message-ID: <BYAPR11MB3784A243F6561668E056EE198A609@BYAPR11MB3784.namprd11.prod.outlook.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 535e01b6-370b-4d4b-9df2-08d9ae17b748
x-ms-traffictypediagnostic: BYAPR11MB2567:
x-microsoft-antispam-prvs: <BYAPR11MB256703CD8AF653CE84B5328A8A609@BYAPR11MB2567.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:48;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cdP5xjCofmeAa4w5hyMtPKhA84pZre561LosVl87JV/JbbHqfmEt3wgJiRoi88RxAW4ZUxKwyGIVtzRTfHr6JkUjsN1w1ANIZnMQdfzw6jddmMLp0T5i7F+4rQlt5jZajd33ayeuy76c+dG9RRlBY2q/NeTq9hnBYIhFUFFaf+osMsTkYtE1Z5h398QcbLO//e+xcWANLyzaFIX45r56iFAV5I408We5SNoUg48JIlq5aENPwiikFpanJu/SH9oNhiJizDqVS+OGFn7FYJO4bOVEaauSoPRjo5FJ6cSWG0U3dS01OwticxO+Va45i87WKRiVEPsK+8HL9EBYT2WsEy1Jm44B4tjRwUtdqmjxWXN6RSdB0u7NkbGGgMjzGXe0DOAiU8jvoQzMR508J2477gQomvT+bmeJV8xsfOI1HW5j37rm5pnBUUke/fQolHD1MiKsEj1FkfM6qQT/p9nBo8h9fgII2bi7LuG1XmvdFnqkoRx6ZsK3uDORbk9I+uxsiXqT/4QNzEktDTitMLM7ExCjZLSrsB5JbGbgEQYyudJ3PzbFsJnBnVhBoT2dwXwo9cHlkiuCkN4kPb3gtQf2r1UPRaHXgazrUQ6ZGBCHwniDPbDwNvvlFVgBYAw4WPW/j7DOv0YcEeas4gRGA2aVxyjFsbBVCldKkaCmTC60f6F05n+z5KMNx7RhbEY2G1QxSbcuLm1dtyRKNvItoy0JBQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6506007)(8676002)(82960400001)(26005)(33656002)(2906002)(83380400001)(316002)(64756008)(6916009)(122000001)(71200400001)(508600001)(66446008)(5660300002)(55016002)(66946007)(7696005)(9686003)(30864003)(66556008)(52536014)(66476007)(38070700005)(186003)(86362001)(53546011)(76116006)(8936002)(38100700002)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TDaCREw24oWtEHIYI6mhG8yTWj+zt8Z4fimHpWtSsMqR4CF9petEvy5oW4oh?=
 =?us-ascii?Q?X9E39iKzAZjdtE8SmdkAEp3kaY4rmlBgVeItbH7WpQmkROE4stHgBt2xulNu?=
 =?us-ascii?Q?CJBjEhBP4/rX9ePVrS3oKDOMXONTftRbrJ4M1f63jC6FyUEiGHYv187XW29G?=
 =?us-ascii?Q?ws+SLa8KCPAB1v5o/nW9nOEZwE54k/eTQH3Hy653TBebL8c8aPWbDRM2Q518?=
 =?us-ascii?Q?c62SlozIS669N+i/VpgRc5SidAE51SN467lLXvtJuD0NVacABlSXyg4ddWAX?=
 =?us-ascii?Q?tEOLZFnhswU+k7suBQeiNfSDxGvJn250l70zkC553ElYS4d3Be30M63nY32f?=
 =?us-ascii?Q?G+jImzi87amWzNPbOLPEF4LvK/9oYFBb4e9XfR95JQUpwln9JNyY0VOtyFpe?=
 =?us-ascii?Q?p2rrpdzwRTnZ2HINk2Irs9y4NYP9OlMBnnCLYRi0X7AW5MMTQKDZYNM+OVjY?=
 =?us-ascii?Q?SZ/XvY4PIvnLmoztcDzKUffB4+qK7wTFPMG1MISLbdrF8NQ5/tsaMKozBuSm?=
 =?us-ascii?Q?p9UQuXqTgkRv2AyKxYaB5BpH5WAiR0hFygSifAhKx88TXxvLZIknfbCeL7es?=
 =?us-ascii?Q?ketsQ16aZYLJSHXibUvCP1zvEJ+yk9UKggZr1j+KA0ExXEOCnD9vrHa+yB55?=
 =?us-ascii?Q?H7oP7oTqsssmwdnWIm0m3Gz0yPsK5ls3r91H5mM2qK/7oGmVQYFmg9CooSaV?=
 =?us-ascii?Q?GvzKv7IxVdhESBdW/a+J4nSHR9ftkG+ytBPARi1nswxgBt9pIPeazKbmxlwU?=
 =?us-ascii?Q?w28/Y3PglYVclDBalAELtfxhk5KFDX57eI7jG9tpK9Z1vW0s/0Oc/8FArwzE?=
 =?us-ascii?Q?t9MAAsBY3Z1aTEksJjPAE68O7o0cNqtEoGDFUruxUe861vbOQbOkph8J8jfi?=
 =?us-ascii?Q?Et6BgKGBzpV6GJmEMMbjpQVbDWCYwqiXNuYYlo5qmHOM8Q9hf5lMco45t5NC?=
 =?us-ascii?Q?4EQ0sxY65abwBjzRqXOmRm2iweBgcs07lWO+wswKK0iU60jG3wRf0a3/fOJO?=
 =?us-ascii?Q?WnrQuqlsOR0NvRHpcP6Krrp/HMWJjnXJ0bJI6UWy4wsPtYVdrBD+NRLHczhL?=
 =?us-ascii?Q?/rWHatA0GLkOg3b0ezxOz1EYE08//i4IP6xY79lFWWkFC5z8AwBKhY9c1R3f?=
 =?us-ascii?Q?aqhBDiLqv5bCfnB/k+1SnrWrYTE5PMYRro12V5mw0lumi5+O/H2VoVmBwSjU?=
 =?us-ascii?Q?625R/yxGd5P4DDSyo2Ztmm1uUOhLRi7J+G8zre8Pi2SCmwH9VaKO5pZKBkGl?=
 =?us-ascii?Q?shtpk3htMx7UUb2EH2QvDUuBBsW42dO/h6v/6R3wOC9JhhvSA3DFh7XckT2C?=
 =?us-ascii?Q?Dh2FGs69/1JhAvwXde1duMc5mpX+heGtAjSoj13cok/cJ8my/oczlm89P4PG?=
 =?us-ascii?Q?Jno28Hr7Gg7Wuz/EELmS70+2jGujd26a08uGXjok5xjZovp7HgZjp/4MWjCK?=
 =?us-ascii?Q?NfFIefg5SqXwXLm1ZAbh4HpEUox/2qKMztuG7jdGXKHx8zdgaz6b2WDpFwzi?=
 =?us-ascii?Q?TTew/FdoCghAhPFodSBJXNzfS7VlP/GdptSEa+kcfZ1NJsBH3YXjSSXWOQU2?=
 =?us-ascii?Q?/82LvsKPYF1wXa0hmmYyIs2I/A4BKDKXTMi/CtYgqFClSvMiEqsz7BaHwINv?=
 =?us-ascii?Q?Mg1yeyWnNYfKM/3mHezPHg1eRvlyg2mo92Zt5IZSNOVTvqihSuNS5uZ6XkgK?=
 =?us-ascii?Q?JH6ipXbGo8PKw7e7L6GqAZXk2P5ZLg6g4t0Hr1QD2JYh98Q6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 535e01b6-370b-4d4b-9df2-08d9ae17b748
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2021 00:25:13.1236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j6XuyeeIaNL46PX1vdne8j4uI0ejI3k33GP/QTLj04KFwvWv/DZAFfIaVGJslmPj5E9IMHKKCWkyZmcMmVb2/hWYN1Sw2ah9cnBf3Szti+Usn1FsFFJpR8dhoSeA/EMj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2567
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
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

I realize I missed checkpatch on patch-7 before send-mail. Will fix that on=
 next rev.
Patch #2 also has checkpatch failures which I was aware of - I'm still wres=
ting with how to instance those register tables in a clean readable way usi=
ng.

...alan

-----Original Message-----
From: Teres Alexis, Alan Previn <alan.previn.teres.alexis@intel.com>=20
Sent: Monday, November 22, 2021 3:04 PM
To: intel-gfx@lists.freedesktop.org
Cc: Teres Alexis, Alan Previn <alan.previn.teres.alexis@intel.com>
Subject: [RFC 7/7] drm/i915/guc: Print the GuC error capture output registe=
r list.

Print the GuC captured error state register list (offsets and values) when =
gpu_coredump_state printout is invoked.

Also, since the GuC can report multiple engine class registers in a single =
notification event, parse the captured data (appearing as a stream of struc=
tures) to identify multiple captures of different 'engine-capture-group-out=
puts'.

Finally, for each 'engine-capture-group-output', identify the last running =
context and print already-identified vma's so that user's output report fol=
lows the same layout as execlist submission. I.e.
engine1-registers, engine1-context-vmas, engine2-registers, engine2-context=
-vmas, etc.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 389 ++++++++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   6 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  53 ++-
 drivers/gpu/drm/i915/i915_gpu_error.h         |   5 +
 5 files changed, 439 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i9=
15/gt/intel_engine_cs.c
index 332756036007..5806e2c05212 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1595,9 +1595,7 @@ static void intel_engine_print_registers(struct intel=
_engine_cs *engine,
 		drm_printf(m, "\tIPEHR: 0x%08x\n", ENGINE_READ(engine, IPEHR));
 	}
=20
-	if (intel_engine_uses_guc(engine)) {
-		/* nothing to print yet */
-	} else if (HAS_EXECLISTS(dev_priv)) {
+	if (HAS_EXECLISTS(dev_priv) && !intel_engine_uses_guc(engine)) {
 		struct i915_request * const *port, *rq;
 		const u32 *hws =3D
 			&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/d=
rm/i915/gt/uc/intel_guc_capture.c
index 459fe81c77ae..998ce1b474ed 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -415,8 +415,389 @@ int intel_guc_capture_output_min_size_est(struct inte=
l_guc *guc)
  *                   L--> intel_guc_capture_store_snapshot
  *                        L--> queue(__guc_capture_store_snapshot_work)
  *                             Copies from B (head->tail) into C
+ *
+ * GUC --> notify context reset:
+ * -----------------------------
+ *     --> G2H CONTEXT RESET
+ *                   L--> guc_handle_context_reset --> i915_capture_error_=
state
+ *                    --> i915_gpu_coredump --> intel_guc_capture_store_pt=
r
+ *                        L--> keep a ptr to capture_store in
+ *                             i915_gpu_coredump struct.
+ *
+ * User Sysfs / Debugfs
+ * --------------------
+ *      --> i915_gpu_coredump_copy_to_buffer->
+ *                   L--> err_print_to_sgl --> err_print_gt
+ *                        L--> error_print_guc_captures
+ *                             L--> loop: intel_guc_capture_out_print_next=
_group
+ *
  */
=20
+#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
+
+static char *
+guc_capture_register_string(const struct intel_guc *guc, u32 owner, u32 ty=
pe,
+			    u32 class, u32 id, u32 offset)
+{
+	struct __guc_mmio_reg_descr_group *reglists =3D guc->capture.reglists;
+	struct __guc_mmio_reg_descr_group *match;
+	int num_regs, j =3D 0;
+
+	if (!reglists)
+		return NULL;
+
+	match =3D guc_capture_get_one_list(reglists, owner, type, id);
+	if (match) {
+		num_regs =3D match->num_regs;
+		while (num_regs--) {
+			if (offset =3D=3D match->list[j].reg.reg)
+				return match->list[j].regname;
+			++j;
+		}
+	}
+
+	return NULL;
+}
+
+static inline int
+guc_capture_store_remove_dw(struct guc_capture_out_store *store, u32 *byte=
sleft,
+			    u32 *dw)
+{
+	int tries =3D 2;
+	int avail =3D 0;
+	u32 *src_data;
+
+	if (!*bytesleft)
+		return 0;
+
+	while (tries--) {
+		avail =3D CIRC_CNT_TO_END(store->head, store->tail, store->size);
+		if (avail >=3D sizeof(u32)) {
+			src_data =3D (u32 *)(store->addr + store->tail);
+			*dw =3D *src_data;
+			store->tail =3D (store->tail + 4) & (store->size - 1);
+			*bytesleft -=3D 4;
+			return 4;
+		}
+		if (store->tail =3D=3D (store->size - 1) && store->head > 0)
+			store->tail =3D 0;
+	}
+
+	return 0;
+}
+
+static int
+capture_store_get_group_hdr(const struct intel_guc *guc,
+			    struct guc_capture_out_store *store, u32 *bytesleft,
+			    struct intel_guc_capture_out_group_header *group) {
+	int read =3D 0;
+	int fullsize =3D sizeof(struct intel_guc_capture_out_group_header);
+
+	if (fullsize > *bytesleft)
+		return -1;
+
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >=3D fullsize)=
 {
+		    memcpy(group, (store->addr + store->tail), fullsize);
+			store->tail =3D (store->tail + fullsize) & (store->size - 1);
+			*bytesleft -=3D fullsize;
+		return 0;
+	}
+
+	read +=3D guc_capture_store_remove_dw(store, bytesleft, &group->reserved1=
);
+	read +=3D guc_capture_store_remove_dw(store, bytesleft, &group->info);
+	if (read !=3D sizeof(*group))
+		return -1;
+
+	return 0;
+}
+
+static int
+capture_store_get_data_hdr(const struct intel_guc *guc,
+			   struct guc_capture_out_store *store, u32 *bytesleft,
+			   struct intel_guc_capture_out_data_header *data) {
+	int read =3D 0;
+	int fullsize =3D sizeof(struct intel_guc_capture_out_data_header);
+
+	if (fullsize > *bytesleft)
+		return -1;
+
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >=3D fullsize)=
 {
+		    memcpy(data, (store->addr + store->tail), fullsize);
+			store->tail =3D (store->tail + fullsize) & (store->size - 1);
+			*bytesleft -=3D fullsize;
+		return 0;
+	}
+
+	read +=3D guc_capture_store_remove_dw(store, bytesleft, &data->reserved1)=
;
+	read +=3D guc_capture_store_remove_dw(store, bytesleft, &data->info);
+	read +=3D guc_capture_store_remove_dw(store, bytesleft, &data->lrca);
+	read +=3D guc_capture_store_remove_dw(store, bytesleft, &data->guc_ctx_id=
);
+	read +=3D guc_capture_store_remove_dw(store, bytesleft, &data->num_mmios)=
;
+	if (read !=3D sizeof(*data))
+		return -1;
+
+	return 0;
+}
+
+static int
+capture_store_get_register(const struct intel_guc *guc,
+			   struct guc_capture_out_store *store, u32 *bytesleft,
+			   struct guc_mmio_reg *reg)
+{
+	int read =3D 0;
+	int fullsize =3D sizeof(struct guc_mmio_reg);
+
+	if (fullsize > *bytesleft)
+		return -1;
+
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >=3D fullsize)=
 {
+		    memcpy(reg, (store->addr + store->tail), fullsize);
+			store->tail =3D (store->tail + fullsize) & (store->size - 1);
+			*bytesleft -=3D fullsize;
+		return 0;
+	}
+
+	read +=3D guc_capture_store_remove_dw(store, bytesleft, &reg->offset);
+	read +=3D guc_capture_store_remove_dw(store, bytesleft, &reg->value);
+	read +=3D guc_capture_store_remove_dw(store, bytesleft, &reg->flags);
+	read +=3D guc_capture_store_remove_dw(store, bytesleft, &reg->mask);
+	if (read !=3D sizeof(*reg))
+		return -1;
+
+	return 0;
+}
+
+static void guc_capture_store_drop_data(struct guc_capture_out_store *stor=
e,
+					unsigned long sampled_head)
+{
+	if (sampled_head =3D=3D 0)
+		store->tail =3D store->size - 1;
+	else
+		store->tail =3D sampled_head - 1;
+}
+
+#ifdef CONFIG_DRM_I915_DEBUG_GUC
+#define guc_capt_err_print(a, b, ...) \
+	do { \
+		drm_warn(a, __VA_ARGS__); \
+		if (b) \
+			i915_error_printf(b, __VA_ARGS__); \
+	} while (0)
+#else
+#define guc_capt_err_print(a, b, ...) \
+	do { \
+		if (b) \
+			i915_error_printf(b, __VA_ARGS__); \
+	} while (0)
+#endif
+
+static struct intel_engine_cs *
+guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance) {
+	struct intel_gt *gt =3D guc_to_gt(guc);
+	u8 engine_class =3D guc_class_to_engine_class(guc_class);
+
+	/* Class index is checked in class converter */
+	GEM_BUG_ON(instance > MAX_ENGINE_INSTANCE);
+
+	return gt->engine_class[engine_class][instance];
+}
+
+static inline struct intel_context *
+guc_context_lookup(struct intel_guc *guc, u32 guc_ctx_id) {
+	struct intel_context *ce;
+
+	if (unlikely(guc_ctx_id >=3D GUC_MAX_LRC_DESCRIPTORS)) {
+		drm_dbg(&guc_to_gt(guc)->i915->drm, "Invalid guc_ctx_id 0x%X, max 0x%X",
+			guc_ctx_id, GUC_MAX_LRC_DESCRIPTORS);
+		return NULL;
+	}
+
+	ce =3D xa_load(&guc->context_lookup, guc_ctx_id);
+	if (unlikely(!ce)) {
+		drm_dbg(&guc_to_gt(guc)->i915->drm, "Context is NULL, guc_ctx_id 0x%X",
+			guc_ctx_id);
+		return NULL;
+	}
+
+	return ce;
+}
+
+
+#define PRINT guc_capt_err_print
+#define REGSTR guc_capture_register_string
+
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Name: %s\n", (eng)->name); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Class: 0x%02x\n", (eng)->class)=
; \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Inst: 0x%02x\n", (eng)->instanc=
e); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", (eng)->=
logical_mask)
+
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data) \
+	PRINT(&(i915->drm), (ebuf), "    LRCA: 0x%08x\n", (data).lrca); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-ContextID: 0x%08x\n", (data).guc_ctx=
_id); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-Engine-Instance: 0x%08x\n", \
+	      (uint32_t) FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE,=20
+(data).info));
+
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags=
); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-GuC-ID: 0x%016x\n", (ce)->guc_i=
d.id);
+
+int intel_guc_capture_out_print_next_group(struct drm_i915_error_state_buf=
 *ebuf,
+					   struct intel_gt_coredump *gt)
+{
+	/* constant qualifier for data-pointers we shouldn't change mid of error =
dump printing */
+	struct intel_guc_state_capture *cap =3D gt->uc->capture;
+	struct intel_guc *guc =3D container_of(cap, struct intel_guc, capture);
+	struct drm_i915_private *i915 =3D (container_of(guc, struct intel_gt,
+						   uc.guc))->i915;
+	struct guc_capture_out_store *store =3D &cap->out_store;
+	struct guc_capture_out_store tmpstore;
+	struct intel_guc_capture_out_group_header group;
+	struct intel_guc_capture_out_data_header data;
+	struct guc_mmio_reg reg;
+	const char *grptypestr[GUC_STATE_CAPTURE_GROUP_TYPE_MAX] =3D {"full-captu=
re",
+								    "partial-capture"};
+	const char *datatypestr[GUC_CAPTURE_LIST_TYPE_MAX] =3D {"Global", "Engine=
-Class",
+							      "Engine-Instance"};
+	enum guc_capture_group_types grptype;
+	enum guc_capture_type datatype;
+	int numgrps, numregs;
+	char *str, noname[16];
+	u32 numbytes, engineclass, eng_inst, ret =3D 0;
+	struct intel_engine_cs *eng;
+	struct intel_context *ce;
+
+	if (!cap->enabled)
+		return -ENODEV;
+
+	mutex_lock(&store->lock);
+	smp_mb(); /* sync to get the latest head for the moment */
+	/* NOTE1: make a copy of store so we dont have to deal with a changing lo=
wer bound of
+	 *        occupied-space in this circular buffer.
+	 * NOTE2: Higher up the stack from here, we keep calling this function in=
 a loop to
+	 *        reading more capture groups as they appear (as the lower bound =
of occupied-space
+	 *        changes) until this circ-buf is empty.
+	 */
+	memcpy(&tmpstore, store, sizeof(tmpstore));
+
+	PRINT(&i915->drm, ebuf, "global --- GuC Error Capture\n");
+
+	numbytes =3D CIRC_CNT(tmpstore.head, tmpstore.tail, tmpstore.size);
+	if (!numbytes) {
+		PRINT(&i915->drm, ebuf, "GuC capture stream empty!\n");
+		ret =3D -ENODATA;
+		goto unlock;
+	}
+	/* everything in GuC output structures are dword aligned */
+	if (numbytes & 0x3) {
+		PRINT(&i915->drm, ebuf, "GuC capture stream unaligned!\n");
+		ret =3D -EIO;
+		goto unlock;
+	}
+
+	if (capture_store_get_group_hdr(guc, &tmpstore, &numbytes, &group)) {
+		PRINT(&i915->drm, ebuf, "GuC capture error getting next group-header!\n"=
);
+		ret =3D -EIO;
+		goto unlock;
+	}
+
+	PRINT(&i915->drm, ebuf, "NumCaptures:  0x%08x\n", (uint32_t)
+	      FIELD_GET(GUC_CAPTURE_GRPHDR_SRC_NUMCAPTURES, group.info));
+	grptype =3D FIELD_GET(GUC_CAPTURE_GRPHDR_SRC_CAPTURE_TYPE, group.info);
+	PRINT(&i915->drm, ebuf, "Coverage:  0x%08x =3D %s\n", grptype,
+	      grptypestr[grptype % GUC_STATE_CAPTURE_GROUP_TYPE_MAX]);
+
+	numgrps =3D FIELD_GET(GUC_CAPTURE_GRPHDR_SRC_NUMCAPTURES, group.info);
+	while (numgrps--) {
+		eng =3D NULL;
+		ce =3D NULL;
+
+		if (capture_store_get_data_hdr(guc, &tmpstore, &numbytes, &data)) {
+			PRINT(&i915->drm, ebuf, "GuC capture error on next data-header!\n");
+			ret =3D -EIO;
+			goto unlock;
+		}
+		datatype =3D FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_TYPE, data.info);
+		PRINT(&i915->drm, ebuf, "  RegListType: %s\n",
+		      datatypestr[datatype % GUC_CAPTURE_LIST_TYPE_MAX]);
+
+		engineclass =3D FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_CLASS, data.info);
+		if (datatype !=3D GUC_CAPTURE_LIST_TYPE_GLOBAL) {
+			PRINT(&i915->drm, ebuf, "    GuC-Engine-Class: %d\n",
+			      engineclass);
+			if (engineclass <=3D GUC_LAST_ENGINE_CLASS)
+				PRINT(&i915->drm, ebuf, "    i915-Eng-Class: %d\n",
+				      guc_class_to_engine_class(engineclass));
+
+			if (datatype =3D=3D GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
+				GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data);
+				eng_inst =3D FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, data.info);
+				eng =3D guc_lookup_engine(guc, engineclass, eng_inst);
+				if (eng) {
+					GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng);
+				} else {
+					PRINT(&i915->drm, ebuf, "    i915-Eng-Lookup Fail!\n");
+				}
+				ce =3D guc_context_lookup(guc, data.guc_ctx_id);
+				if (ce) {
+					GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce);
+				} else {
+					PRINT(&i915->drm, ebuf, "    i915-Ctx-Lookup Fail!\n");
+				}
+			}
+		}
+		numregs =3D FIELD_GET(GUC_CAPTURE_DATAHDR_NUM_MMIOS, data.num_mmios);
+		PRINT(&i915->drm, ebuf, "     NumRegs: 0x%08x\n", numregs);
+
+		while (numregs--) {
+			if (capture_store_get_register(guc, &tmpstore, &numbytes, &reg)) {
+				PRINT(&i915->drm, ebuf, "Error getting next register!\n");
+				ret =3D -EIO;
+				goto unlock;
+			}
+			str =3D REGSTR(guc, GUC_CAPTURE_LIST_INDEX_PF, datatype,
+				     engineclass, 0, reg.offset);
+			if (!str) {
+				snprintf(noname, sizeof(noname), "REG-0x%08x", reg.offset);
+				str =3D noname;
+			}
+			PRINT(&i915->drm, ebuf, "      %s:  0x%08x\n", str, reg.value);
+
+		}
+		if (eng) {
+			const struct intel_engine_coredump *ee;
+			for (ee =3D gt->engine; ee; ee =3D ee->next) {
+				const struct i915_vma_coredump *vma;
+				if (ee->engine =3D=3D eng) {
+					for (vma =3D ee->vma; vma; vma =3D vma->next)
+						i915_print_error_vma(ebuf, ee->engine, vma);
+				}
+			}
+		}
+	}
+
+	store->tail =3D tmpstore.tail;
+unlock:
+	/* if we have a stream error, just drop everything */
+	if (ret =3D=3D -EIO) {
+		drm_warn(&i915->drm, "Skip GuC capture data print due to stream error\n"=
);
+		guc_capture_store_drop_data(store, tmpstore.head);
+	}
+
+	mutex_unlock(&store->lock);
+
+	return ret;
+}
+
+#undef REGSTR
+#undef PRINT
+
+#endif //CONFIG_DRM_I915_DEBUG_GUC
+
 static void guc_capture_store_insert(struct intel_guc *guc, struct guc_cap=
ture_out_store *store,
 				     unsigned char *new_data, size_t bytes)  { @@ -587,6 +968,14 @@ vo=
id intel_guc_capture_destroy(struct intel_guc *guc)
 	guc_capture_clear_ext_regs(guc->capture.reglists);
 }
=20
+struct intel_guc_state_capture *
+intel_guc_capture_store_ptr(struct intel_guc *guc) {
+	if (!guc->capture.enabled)
+		return NULL;
+	return &guc->capture;
+}
+
 int intel_guc_capture_init(struct intel_guc *guc)  {
 	struct drm_i915_private *dev_priv =3D (guc_to_gt(guc))->i915; diff --git =
a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/=
uc/intel_guc_capture.h
index 7031de12f3a1..7d048a8f6efe 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -88,6 +88,11 @@ struct intel_guc_state_capture {
 	struct work_struct store_work;
 };
=20
+struct drm_i915_error_state_buf;
+struct intel_gt_coredump;
+
+int intel_guc_capture_out_print_next_group(struct drm_i915_error_state_buf=
 *m,
+					   struct intel_gt_coredump *gt);
 void intel_guc_capture_store_snapshot(struct intel_guc *guc);  int intel_g=
uc_capture_list_count(struct intel_guc *guc, u32 owner, u32 type, u32 class=
,
 				 u16 *num_entries);
@@ -96,6 +101,7 @@ int intel_guc_capture_list_init(struct intel_guc *guc, u=
32 owner, u32 type, u32  int intel_guc_capture_output_min_size_est(struct i=
ntel_guc *guc);  void intel_guc_capture_destroy(struct intel_guc *guc);  vo=
id intel_guc_capture_store_snapshot_immediate(struct intel_guc *guc);
+struct intel_guc_state_capture *intel_guc_capture_store_ptr(struct=20
+intel_guc *guc);
 int intel_guc_capture_init(struct intel_guc *guc);
=20
 #endif /* _INTEL_GUC_CAPTURE_H */
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i=
915_gpu_error.c
index 2a2d7643b551..47016059c65d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -600,6 +600,16 @@ static void error_print_engine(struct drm_i915_error_s=
tate_buf *m,
 	error_print_context(m, "  Active context: ", &ee->context);  }
=20
+static void error_print_guc_captures(struct drm_i915_error_state_buf *m,
+				     struct intel_gt_coredump *gt)
+{
+	int ret;
+
+	do {
+		ret =3D intel_guc_capture_out_print_next_group(m, gt);
+	} while (!ret);
+}
+
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, =
...)  {
 	va_list args;
@@ -609,9 +619,9 @@ void i915_error_printf(struct drm_i915_error_state_buf =
*e, const char *f, ...)
 	va_end(args);
 }
=20
-static void print_error_vma(struct drm_i915_error_state_buf *m,
-			    const struct intel_engine_cs *engine,
-			    const struct i915_vma_coredump *vma)
+void i915_print_error_vma(struct drm_i915_error_state_buf *m,
+			  const struct intel_engine_cs *engine,
+			  const struct i915_vma_coredump *vma)
 {
 	char out[ASCII85_BUFSZ];
 	int page;
@@ -679,7 +689,7 @@ static void err_print_uc(struct drm_i915_error_state_bu=
f *m,
=20
 	intel_uc_fw_dump(&error_uc->guc_fw, &p);
 	intel_uc_fw_dump(&error_uc->huc_fw, &p);
-	print_error_vma(m, NULL, error_uc->guc_log);
+	i915_print_error_vma(m, NULL, error_uc->guc_log);
 }
=20
 static void err_free_sgl(struct scatterlist *sgl) @@ -764,12 +774,16 @@ st=
atic void err_print_gt(struct drm_i915_error_state_buf *m,
 		err_printf(m, "  GAM_DONE: 0x%08x\n", gt->gam_done);
 	}
=20
-	for (ee =3D gt->engine; ee; ee =3D ee->next) {
-		const struct i915_vma_coredump *vma;
+	if (gt->uc->capture) /* error capture was via GuC */
+		error_print_guc_captures(m, gt);
+	else {
+		for (ee =3D gt->engine; ee; ee =3D ee->next) {
+			const struct i915_vma_coredump *vma;
=20
-		error_print_engine(m, ee);
-		for (vma =3D ee->vma; vma; vma =3D vma->next)
-			print_error_vma(m, ee->engine, vma);
+			error_print_engine(m, ee);
+			for (vma =3D ee->vma; vma; vma =3D vma->next)
+				i915_print_error_vma(m, ee->engine, vma);
+		}
 	}
=20
 	if (gt->uc)
@@ -1140,7 +1154,7 @@ static void gt_record_fences(struct intel_gt_coredump=
 *gt)
 	gt->nfence =3D i;
 }
=20
-static void engine_record_registers(struct intel_engine_coredump *ee)
+static void engine_record_registers_execlist(struct=20
+intel_engine_coredump *ee)
 {
 	const struct intel_engine_cs *engine =3D ee->engine;
 	struct drm_i915_private *i915 =3D engine->i915; @@ -1384,8 +1398,10 @@ in=
tel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
=20
 	ee->engine =3D engine;
=20
-	engine_record_registers(ee);
-	engine_record_execlists(ee);
+	if (!intel_uc_uses_guc_submission(&engine->gt->uc)) {
+		engine_record_registers_execlist(ee);
+		engine_record_execlists(ee);
+	}
=20
 	return ee;
 }
@@ -1558,8 +1574,8 @@ gt_record_uc(struct intel_gt_coredump *gt,
 	return error_uc;
 }
=20
-/* Capture all registers which don't fit into another category. */ -static=
 void gt_record_regs(struct intel_gt_coredump *gt)
+/* Capture all global registers which don't fit into another category.=20
+*/ static void gt_record_registers_execlist(struct intel_gt_coredump=20
+*gt)
 {
 	struct intel_uncore *uncore =3D gt->_gt->uncore;
 	struct drm_i915_private *i915 =3D uncore->i915; @@ -1806,7 +1822,9 @@ int=
el_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
 	gc->_gt =3D gt;
 	gc->awake =3D intel_gt_pm_is_awake(gt);
=20
-	gt_record_regs(gc);
+	if (!intel_uc_uses_guc_submission(&gt->uc))
+		gt_record_registers_execlist(gc);
+
 	gt_record_fences(gc);
=20
 	return gc;
@@ -1871,6 +1889,11 @@ i915_gpu_coredump(struct intel_gt *gt, intel_engine_=
mask_t engine_mask)
 		if (INTEL_INFO(i915)->has_gt_uc)
 			error->gt->uc =3D gt_record_uc(error->gt, compress);
=20
+		if (intel_uc_uses_guc_submission(&gt->uc))
+			error->gt->uc->capture =3D intel_guc_capture_store_ptr(&gt->uc.guc);
+		else
+			error->gt->uc->capture =3D NULL;
+
 		i915_vma_capture_finish(error->gt, compress);
=20
 		error->simulated |=3D error->gt->simulated; diff --git a/drivers/gpu/drm=
/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index b98d8cdbe4f2..b55369b245ee 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -17,6 +17,7 @@
 #include "gt/intel_engine.h"
 #include "gt/intel_gt_types.h"
 #include "gt/uc/intel_uc_fw.h"
+#include "gt/uc/intel_guc_capture.h"
=20
 #include "intel_device_info.h"
=20
@@ -151,6 +152,7 @@ struct intel_gt_coredump {
 		struct intel_uc_fw guc_fw;
 		struct intel_uc_fw huc_fw;
 		struct i915_vma_coredump *guc_log;
+		struct intel_guc_state_capture *capture;
 	} *uc;
=20
 	struct intel_gt_coredump *next;
@@ -216,6 +218,9 @@ struct drm_i915_error_state_buf {
=20
 __printf(2, 3)
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, =
...);
+void i915_print_error_vma(struct drm_i915_error_state_buf *m,
+			  const struct intel_engine_cs *engine,
+			  const struct i915_vma_coredump *vma);
=20
 struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
 					    intel_engine_mask_t engine_mask);
--
2.25.1

