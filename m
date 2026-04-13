Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJwQAjFm3WmydgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:54:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 652753F3A53
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:54:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C45010E0B1;
	Mon, 13 Apr 2026 21:54:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GsRq7CAj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FFFF10E0B1;
 Mon, 13 Apr 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776117293; x=1807653293;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nvQpTQCKrFNxVMydrvYKMItlyFNBjJe8fYlDziMxhek=;
 b=GsRq7CAjQVIWSOCymbrjgemEpL01KPz4nB6JLeRo/Cso0Vkc9ftNsUgz
 JjnhdG3Fzcb4dUclr4NHCkBwqUMxIULkCffb3ygqvHYOC9BB4xWZ0q1+Q
 YNfrqG81ibFlYwG5MP3LJwZHyep9JBdgcEH/ZLW949UBl+tJgfQoovsEJ
 82ssaVFakWo34yKNhmJlm3+rkeXFLm2lORzo5YGTc/UxEn5QBnKKTKBgo
 zNVzpVYexQzJl++QfcZicr620rFCgpiBaHAI8GGUtEtDpyiKAxg5d3KeD
 f4cJKGIxs3qG19K9znB67Ba1ZmEDzIu3EEE9rXaxqEx8W1bYKTN1lgLMG g==;
X-CSE-ConnectionGUID: m7cLBkyWRCKfubJPHRxobQ==
X-CSE-MsgGUID: DSKYljmQT0KZf44QN8ifKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="77085467"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="77085467"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:54:52 -0700
X-CSE-ConnectionGUID: dPwgjGH5Rwm0eFZfvtBTqw==
X-CSE-MsgGUID: rQp13nI9Qrm+LmsYw45dyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="225174525"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:54:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:54:52 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 14:54:52 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.22) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:54:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YPq00FgSuvzYFgXb1Zt3f11V3VeM2baHTwbN0HP0C9lcS4i2FYBTciDUspiLSoNoDfv10miQ7D7btZjAnYtc/FohJDs0kSSuANPV9aZijDa+By8Ob9kO/HbqOHXKCT5NoYeD/w+oklTxfjDKR0CaAYRJL0VPSqk7uzapNHPJJlzzx/upBQjocspRztNwL3mLfT6RbUxd8dk2sRAjtaN0WHNyeIkClBkzeSX8/9hS/OCkAbkDjK47QLKhTCWFzDANIU4s8sGrZWQgIynlME5tscR6u0n4h2wpbscmhbZQznpEPwcSTIFjefPCOQhx1WSTEfpZabVjpKDpe/nbd2XsVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XWD2dsVhesEPhTYiATYVoPfK+v0PCWdahVW+6oDVrzk=;
 b=fop84WKwuakZa/N2zMW3J1Yg2WD/cOjD4eJNiqjB+CzaGgyFueINJHxnrA4aegtGuGe9Mbk3baD2PTnjWo2MKDkIv2KU47GOUjtSJ5zUdkjOr/sQMfp3EN65TzUk2dsVSU5j+hPMvOxQ7wuyolq9JX/muc4cXApzxxFjbY/1tNAqYNOVDaSlwgVT5cGnboUegIfIRyMKEp1Yk0fUa3ui0aK8hcx6RDbRR+aJ2P8JKDUQ5ojBNAijGRaCGv1cgwLeTVOqxpkcAGleLgAavW9pr30SCpI4VK1SHvsd1xZXEX+JGdZg7iS3iE1ScZF4s8p/uIxYsa9psVWBbPAOVVN62w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7512.namprd11.prod.outlook.com (2603:10b6:806:345::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.48; Mon, 13 Apr 2026 21:54:49 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 21:54:48 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 11/19] drm/i915/display: Store DC3CO eligibility in PSR
 state
Thread-Topic: [PATCH 11/19] drm/i915/display: Store DC3CO eligibility in PSR
 state
Thread-Index: AQHcvUQ0DE3wAdqu6kKjk3f0bMQAV7XdpHMg
Date: Mon, 13 Apr 2026 21:54:48 +0000
Message-ID: <DM4PR11MB63604EFFC4621F63F0742663F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-12-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-12-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7512:EE_
x-ms-office365-filtering-correlation-id: 1b4cfaa5-6ee0-4eb7-705a-08de99a74893
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: CYqQrIKiuWWdB/uB00SN2gxkZ/FcEISNIQ58xetLc8yjqrCdjHKWVXuYmXsti+syM4pWADlgxIpN+lMSUX4jsru19dC9kBGvrEvTzMGksMEXhE3gZCNfBtGw94FAHO/U+9kQbp1xEiP+eLbYgouada383+cZuJ6Pux1SlyJTkGP/Ma4wSG6zReB2w3SgbuXgdd6g/FSAmyVDYOpMlw2A6whdaGtgGWrr+b+M5+/fRfse59DN8wPV1B1yF3ooq6F5TNghySCYWulvEZdNzhz68xImLrJ4Zn2r14z2wx/iP5wpl8XmIIyiQTdFf1DqIsX9YIlZRtlRJsscrPdvLc7bBvLWig/OyN9UilSZtz/x9m+DnP1kLP/i0jdbc/8OREV+K9/3n+Q6qvq4IWK0djkoqZ0lChTaMFZlvEv+seMx0nRD/GckS6ZzXoWjXKQygR25h3hpcc6bDLQRMXX1ZjvpZtNozHLpgCKFffttGPMfvuVf6BspQKHIGMp4goDfhHy6f0dTWk/Zslb/ipjQT4abKXCBSALVhCpesN/knMq5oWAmqyXBu2BB5lDbhstKcffY+/Ewis9JM4BRcgiY029gKju+OZnFLI/6hOdLrqXb9MrFUDEzwXTsP035/be5meFY8XdSnmQoyfAMesfuHcCb7K6/J+vKOtXYNR4HaCqYstHzinDc48dhAJcjytOKB3bIRAeevOj88Sl+zveqOx9qUtkKvtly8Ucc6Ll9TnQYbO1oSOXN5GC9phivyoS2udxwlEa8EQBJWcJP4anuHy+QBg7vqpWUjA25dUhUmSml49M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kn0YQ0Cz54QmgUDQ3RVhMs0YLAHz3/EJ0Z5iMtGFcLvbqh2WY0cgLYZrTq5v?=
 =?us-ascii?Q?uEB05YCXXWyLrnC/DsE2qiN1Pp0vFC0Vv13utlldrKHZCvqfljq7180oxmIN?=
 =?us-ascii?Q?0wBqIjRMUnuaKUEdygc1wgCZPGlRUx0We9sMON77ZgVtZdc+DvRjZoR2Qhj/?=
 =?us-ascii?Q?ej9EMYrQo5al7NcXWkgdwRFTqcaEPk8N91IWntLNmpt/k/0XO5ugRGP4hkoa?=
 =?us-ascii?Q?DOjH0apfah7vsi6MYKfvM70ksc2YoT+6yRnz59cIp3PXgaJDJ+iCfDSNFgRG?=
 =?us-ascii?Q?XyAmQRn5cczA9Pa9siLGp8fCIHnGnEKb2eIvxizTW+VIQTYlS8/k+qrUl5SC?=
 =?us-ascii?Q?VBe71neWgzQiyV+iJpcef6NGHkqwasVDsACeZxNpvCuTZVdlZJ4wF1PqJ4Eg?=
 =?us-ascii?Q?njyRBh1xKU5kD5rYmdV+8mwph7j3O7dnies80/Kg4PYE+wfmHJ37r8DpvcJK?=
 =?us-ascii?Q?erkDGKJ1fnuhapVA59S6K4EDYp4EdyfVvr3LPmQ0r0NMAVRItvrGDK+g706e?=
 =?us-ascii?Q?g5yo3xHtzuZQT2/FFsNdxNJTQV0Wdwlb90Oj4U2fl3zi+HYXGa/Z1t9j8PO+?=
 =?us-ascii?Q?KR5COxQfLMO5rZ1O4gj5vmxEpHzGrobe9TMDXZzFkv/5fVJk46zlyHN1IWOI?=
 =?us-ascii?Q?4eGrIhhC3W0WJ99RcIUEb0Vf6igl9ahr+EDKxCFqbn4QH6HjigCR6x24hdpX?=
 =?us-ascii?Q?vfsr/mqD6TjojrKS6LBbanCWmmODRTl9NUhpil4309s47cfhEiJc/8dvNPnx?=
 =?us-ascii?Q?AVAMBOhw3xmMS/I1Amrta39l719tfnClriymRdWQeU3VBc587o+YURu+wYPr?=
 =?us-ascii?Q?Nl1Ow/Jm64MiAhIaqBnfPfAFqvQuY2jLYAstyzL0ALsJzOSrHSEeBsqhczXV?=
 =?us-ascii?Q?l9Oy68uRo/RTnMWZI7PKnEPu8fXhwoKN+FJH5Ps5fLM6jc37f4TjtFUn9/Kg?=
 =?us-ascii?Q?MKWUcUCtSRMHmyA1W6YpH9FMbBlnWWJE73cT8v0fb1cIu/hLqabWo/dPDAcW?=
 =?us-ascii?Q?RGxcwl03hIrOmyj4JJ6pmkNA2SxYzNKXfw/udp3sGhT2Ui1E/SXXDcQHwr8c?=
 =?us-ascii?Q?PypgiDke0Q48dKaasEcsLZbJyhcGmTlqb6DAs3JzHLCyn61J95yMGF+Qt9hd?=
 =?us-ascii?Q?Re0K0j5ymBRcG9cgBgoZ3F3qqi6nvy+TzamS+TSbRRo323/4SCWZK6BXh+2M?=
 =?us-ascii?Q?Z2gY99tm4hgA7JIqvXtFI//UR6cXVUt7XvyW7uqgkezhtwexd/UFGB2Jl+aU?=
 =?us-ascii?Q?1ksoW0e3z/HFHPz5CoiGSew1dNLg+fWz2Ud+ZPHdBkpUGGYlWq6ioYsoE9A3?=
 =?us-ascii?Q?daAZk+gOaQdO1LL8zqUTsorAyVYRg/pJkNu2tSVMGSgX0y5KPrZrFtGPs6hu?=
 =?us-ascii?Q?FczaU+M5MQELaildk6GyocDvc9Ta/DDnhiucOdLT4L/UJcFm8PRbxwmCGHVv?=
 =?us-ascii?Q?o1blxwztaCxzmy/Ut7P3M6M3y1hjeri92DvwvLNYODVh3+1LUsE7hl3x7ca1?=
 =?us-ascii?Q?j6EdSjxGlgf/1BlhPMxM95yWiMcxH2q5N1YCcswPq4yCbSXcPS1mg1Tc2Qg0?=
 =?us-ascii?Q?/F4PUlQOr6FsCm99qfighGtcm6xxzu+Z0YXGOsfhKv8cx++NZ7Ue68xPmBeF?=
 =?us-ascii?Q?/K1VoJdH6tdOtVZN+OHGTdbwTy/PP5hLBObwwr4J9VZKcxy2Uso4Cr3/IdLy?=
 =?us-ascii?Q?Jg0xByXki6Ik6baTsMXlUsoU6taFL4KM0aLPiW6miQIodzmvurYzAz6ojl4F?=
 =?us-ascii?Q?8Zq/SM8PDw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kmOXZaAaQKWXWn1mim1JRuehr7d+mevgL3q/+M2AIKhimTLbTVDB4yP20AP9jXL3raXvSApLcV873c9BM8JY3EcL3qiCLK6KuASv0uHugQLSJSPRwxpENMwxdMLs/gggaIk4jKYbTu80Lncowha4x2UMZ+Q9jJ6n6oBIyuTPSejyEAvgYFeFrdVOBMoPj7k7miplh2crEmWnNfB+wxmNBbj1NtoyQkH7pFNho7mVIrbhQi4EFERRGT3Q8w7BooYB5PKozXOelGtcV9mIcmjl1GTatm+xL4CllkETh8Q65Evd6UnhvIe6rT/AiKOAwhijikXPJ/F2ybX1YSVW8eCfaA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b4cfaa5-6ee0-4eb7-705a-08de99a74893
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 21:54:48.9244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sDs4rh3B5v3j+0D76THbyP6ynudbBZZQnJL3YSiCSN4GpqnjIcRjVbeiBAJP8MJYqHDaH3kbR3wf327f3FvbJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7512
X-OriginatorOrg: intel.com
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 652753F3A53
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 11/19] drm/i915/display: Store DC3CO eligibility in PSR s=
tate
>=20
> Store DC3CO eligibility in intel_dp->psr during
> intel_psr_post_plane_update() so PSR configuration can take DC3CO into
> account.
>=20
> This will be used to control PSR2 parameters such as idle frames
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_psr.c           | 5 +++++
>  2 files changed, 7 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0a327c4df98d..d0d2cda3d669 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1783,6 +1783,8 @@ struct intel_psr {
>  	ktime_t last_exit;
>  	bool sink_not_reliable;
>  	bool irq_aux_error;
> +	/* DC3CO eligibility used to control PSR configuration */
> +	bool dc3co_eligible;
>  	u16 su_w_granularity;
>  	u16 su_y_granularity;
>  	bool source_panel_replay_support;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 987d49536548..bab254700a62 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2239,6 +2239,8 @@ static void intel_psr_disable_locked(struct intel_d=
p
> *intel_dp)
>  	intel_dp->psr.psr2_sel_fetch_cff_enabled =3D false;
>  	intel_dp->psr.active_non_psr_pipes =3D 0;
>  	intel_dp->psr.pkg_c_latency_used =3D 0;
> +	intel_dp->psr.dc3co_eligible =3D false;
> +

Drop the blank line.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

>  }
>=20
>  /**
> @@ -3061,6 +3063,9 @@ void intel_psr_post_plane_update(struct
> intel_atomic_state *state,
>  		 */
>  		intel_dp->psr.busy_frontbuffer_bits =3D 0;
>=20
> +		intel_dp->psr.dc3co_eligible =3D intel_dc3co_allowed(state) &&
> +			intel_display_power_dc3co_supported(display);
> +
>  		mutex_unlock(&psr->lock);
>  	}
>  }
> --
> 2.43.0

