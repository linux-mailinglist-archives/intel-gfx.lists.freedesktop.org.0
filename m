Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JW//BAvL4WkhyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 07:54:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C3D417308
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 07:54:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9920710E171;
	Fri, 17 Apr 2026 05:54:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nV1KQe6F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEBF510E171
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 05:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776405254; x=1807941254;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=v5wRoK6w/ewTYoihsSLNeklJ8hQDZQIFq2J6WYQXdJA=;
 b=nV1KQe6F1ds7IcrlGKsy53glQdzxf2nG4aXYwSrsGViEokP7XGLvpf0d
 09YNGPnqOLH3RsqMZHVXXbIGv0LONoEzx4pPQhCdl+z+fmqfVCHpo76M2
 McTIwDXXuf/ycL3/Q3pdASClqj786tOLMU2RiZshycNnTQFCXbVnshp5J
 EIwN4gGt0u8LwmxCuvaTAuvkJdP2QStvU81pVS/s3G5Wy8YdwfDbop1Qv
 UmSsqJcRSS52V1BpHwPX5kM2DY6+AZ4+fMWEpZ0NZ14iaEoeYUKhjVJ+V
 GqNNfA3PD1dpXy6cbDn3hGB5n0QyUOFLGdDnl3Zr189fHiy0SqTcEckpl Q==;
X-CSE-ConnectionGUID: h01VFbanSNmJFu7z6VEhVw==
X-CSE-MsgGUID: P7PTdkd8TrK07xWa5YKcUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77116697"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="77116697"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 22:54:14 -0700
X-CSE-ConnectionGUID: UI3RKh3DQDyiwmj+VvuRYw==
X-CSE-MsgGUID: 6IAvL6MhTv+oDofU124C+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="261349583"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 22:54:13 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 22:54:12 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 22:54:12 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 22:54:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IrVxCvAbudwxdu9Ndx5AIE7tuhASm72NDQkQ5PJShnK2d750KF1QugNtg8lx7wHXjiEFJwyWqp4gcv8V/SRCd2I1LmKM5SOBEGcJRc1hz7xEuh0VxN0hysCRZHVFcyR9MUfS3gtqeuQ3X5p+3FARjCnAFfwhnTjyBI1tQJxCctmRYFdgHFX9rdihEUWSVnWx3hOkHBkZQMdRdAUjgxvbmKWtgt16eFEO5DyIzbxHjlTAcMxqTVgNRYG3IXXGp0woRme6PSf9bUZbx9GxBXOJqwM6Ue2D15fhCs5QnZ06QlqAGd64fietwXpKJP+i4IzjmBZW873Uf1uQzQQ2sMEpNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vBcjj5D1PXDtchfmvmzQ20q2YX7PpHZAMmh4rjrp35c=;
 b=ocoZpv/zJ72rmuAudyMJXeddCKmJEeRCfuvQOYLtsosBINaO0DjGg7XJx5pMB3roEnS3vyXQyE4/46c5VRxLckGxSYZmybwZg+G5bn8RiIje9C9XYQ/AQvv9CkSH0owduLZgDcL4z8WRe1mkMfb5mLe+V5tLvW0En0ZGKPrY5rdjI32Z3PhnuqNGGho3U/6060CCauB4OpDAXCbhPHb5XZXLgK1CI9zlRcP5tgdWSsIaty1KEqMuFpXtWfLC8qV2B07sWngIcGW0ISPXrZI+MlqkyWHvJFc2zFFH9I0ms72ztVbQO+MV0bZtvp5htjutVJG55Siu5cdknaNxbq+PCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPFC0624F2CA.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::850) by SJ0PR11MB6622.namprd11.prod.outlook.com
 (2603:10b6:a03:478::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Fri, 17 Apr
 2026 05:54:06 +0000
Received: from SJ5PPFC0624F2CA.namprd11.prod.outlook.com
 ([fe80::67b2:73df:c8e1:4627]) by SJ5PPFC0624F2CA.namprd11.prod.outlook.com
 ([fe80::67b2:73df:c8e1:4627%6]) with mapi id 15.20.9769.048; Fri, 17 Apr 2026
 05:54:06 +0000
From: "Plewka, Maciej" <maciej.plewka@intel.com>
To: "Yao, Jia" <jia.yao@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>, "Lin, Shuicheng"
 <shuicheng.lin@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
Subject: RE: [PATCH v3] drm/i915/dg2: Add per-context control for
 Wa_22013059131
Thread-Topic: [PATCH v3] drm/i915/dg2: Add per-context control for
 Wa_22013059131
Thread-Index: AQHczih2KNSdZkU1HEaHraDPYQRMqbXivLSQgAAECnA=
Date: Fri, 17 Apr 2026 05:54:06 +0000
Message-ID: <SJ5PPFC0624F2CA8435AECCDFBAE47DD0E4EC202@SJ5PPFC0624F2CA.namprd11.prod.outlook.com>
References: <20260417050956.1945481-1-jia.yao@intel.com>
 <SJ5PPFC0624F2CA9A92A1D7A3AB3BD1C4ECEC202@SJ5PPFC0624F2CA.namprd11.prod.outlook.com>
In-Reply-To: <SJ5PPFC0624F2CA9A92A1D7A3AB3BD1C4ECEC202@SJ5PPFC0624F2CA.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPFC0624F2CA:EE_|SJ0PR11MB6622:EE_
x-ms-office365-filtering-correlation-id: cace975e-ff59-4a56-3133-08de9c45bcb3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|38070700021|56012099003|22082099003;
x-microsoft-antispam-message-info: AhRkGtIvtyk9jAf8fw/qFWPzkRFeh30ik6z6hSrHPz4SnS9bVEKb/kwLY8QR4xaTKoTyLWHcll6wopQeeddl/dMjc1KGRxZtEQNqxA0gFAXy9E/O5uYexqlVq2vzWnvJMhfBGyTRnqK2kXioADC6ig5b/H+k0CMN7IT4wRwYFJRAzDrJiN1rCOssclx1t3W3WHwd5LD2qPQYSnOVhtjyVdgkJ6zhChSHNh4fmtND7FieNokKp6CCL/MS6yKYY9jDkaLBvZLK7HIcytyCP47+OB4YZjTu80KHdjIfKbtopMzIbiKHRMi8y/RiNrRRrDZ2FOcLOmoFV0SbalrLjlW+D1A1wQu04sLiQkS7dQrcv6eDM3EmuC2FZ/TT0e9tzdO6GmueUsoNkQqvPiGpydJEhumm6yAm3DrY9HDxZT9aeCBVoASgt641SypSPr1r1ouu3P/VHrybt0LfBzxFiq2ZagbEqH6EUxY7fO+KvWp6Z7y9aqN4kF4icGqnSzO7yI6kZ8cncWoLuJnJ/Ij4lCUwhZ5+4fDj/QkR8yOVpJDdMYLY81jC5LWjOvorv8tzjlHjEC9MgtXqvMTup9YEEvNY/OtCknsJf3wbRRckkvpGee5RtoDFAJLr6SBLjyO0coG0AFkbtXhPlwVNks9Yg6pEuDpo8Z38vDW115igaTNf1wv+dZfhEmczxoPnrheTmMllL62xW0HnX0di3G3qYgtjbX8leAesN9QP20sgZGj1YFqJ3/GIvUiBEQJnuSgtd+iq0ATBUb3ry3GDYQmNBVBjTAc7otdFXo6StpQH+WumSgc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPFC0624F2CA.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(38070700021)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LdBobjOWCp3Yd6FqlM6vVnfTfXmKNc+uRtPRYuN4o7UPvxMYXr2ygNLINggU?=
 =?us-ascii?Q?y4g11o+a7Ko12njaJG4WVBUiEKbxDckWzBMBdjUzYS51LhaJVCEGhxOBu5TG?=
 =?us-ascii?Q?s4QknGhUQluGsTeBvsd9y+E52cJh+TAJN62n4Tae/cOpDR8GQt5TxZAJ0pKV?=
 =?us-ascii?Q?xW2SwoC32a2Is5sZlJhtGZagksXs/6q2gN/xbcoScuN//vI4HrlU1hWXREGo?=
 =?us-ascii?Q?aXBHmWczpZxRC5dVfMT2Ryd36Zc4UKhCqD+lxXPyOmh4s6Rs0ZlSVU5JJotY?=
 =?us-ascii?Q?x/G2F4kagjWBU61d3/nuoAfN3VVGFc8m9Y97gdJxtm7MwBrnE9tcH6Xju9XT?=
 =?us-ascii?Q?+KdobN5K72rN1Rtz1w1kPUglfougWkWOAqPc0x4nvCwJ1LS0pfzQyf28NvlV?=
 =?us-ascii?Q?+G5NMK8EJOmZ2SJ5DJpYoQirP6HQwAn5GueFAA8y/IkbaJV4iIETpJcf6SFa?=
 =?us-ascii?Q?OaPQ6jBHjJfWa+8gxMId/hSXvW6PayA+q+XukT+eZ/N907AzeK1tU50Q0ZLy?=
 =?us-ascii?Q?dI5+3Go0eNDYxOY5sOYR5pbLJ3jN1ERAAE30iyL9oshcpLOzUdi8kUr7nGWe?=
 =?us-ascii?Q?9fbB5dDtLixGSVrEVMT0QjL1Wf6jXSY7kEV2UsqqGrQK0r7/YM9Fj9XFuCM2?=
 =?us-ascii?Q?TUzA5/NCNur4kHaNiZ6XAc1iR22oXDDpsQOqkbBZjYaL+brayG9KKMHw4Oyu?=
 =?us-ascii?Q?j0QKtIJYKS78YRK1DqHFC63UM5aSMUmh2cWJlfAn2B49v23EsBo6eaaouy6K?=
 =?us-ascii?Q?ED4cqTWJ1D3jPVfPRiTfV9iAwxCNa4CyZFlnQTYUtRbeNJMa3QQi6pbNiwbV?=
 =?us-ascii?Q?sbZi2iIR/fSq5zS8ygHyg65kF8UXwHDkhWkcMnSIjZ3MLqhH9lEbHIFnxcs+?=
 =?us-ascii?Q?ADESo5E/bC1mX3jYpZbfEp926ON6SEODBs+34Tc+vw0foFcoBlwCufUxyxDN?=
 =?us-ascii?Q?ee0NmIV6klxPtnytEWiPX8yAkMsg3gZxfM5TEE5FWpoSErVV4VFOA0scwWpA?=
 =?us-ascii?Q?aoQBAy3YEYZJb5tpkJxjf2XJhLPFQ9K78z2dckHLmdCvyWLKZgMPKDDgRWZB?=
 =?us-ascii?Q?vSqFOOe6Gx1NuMcT+msyztn1X7KS3KzflpZloNlnIWUS5nQvzi65eIPvvkaZ?=
 =?us-ascii?Q?P8/i8iJ8LCACIQNyQYOZV3+9QuZupm35GGPO4p8a1WFhiGKMb4rneBEfuMka?=
 =?us-ascii?Q?JfW+G7EaN5Ndgcq9WuzAdDP9gWuN/yvph6Cw+/+hnO9hbMquuGXNzfgmRDFB?=
 =?us-ascii?Q?ZSfocPu+ORDmJWOiPjjW2GPl7/zYg1txdplpXSqVeC2JsP/XGpOvkmYztKbo?=
 =?us-ascii?Q?feqZfOSubqq7qKXMkgQ+5Bo8XHXu9jerBLsev+Grqd/HmeO/M0OO3jxBXM5P?=
 =?us-ascii?Q?IMtv5N3mI30/T6GsKnHkK5iM8GDeufPIddE/dWF3HMbA7OAlf59Tw5a01J06?=
 =?us-ascii?Q?FttSM/bqKiniEk1qm5+FOxkfsq3LVxmKcf9Jr1Ntkj8/htv+NMcVknke2ccS?=
 =?us-ascii?Q?x8DJT6u4hetfWqHcn789v+AQPQRttA6l+3yrhHMMmLtWgW09Dv+0iutN1pJv?=
 =?us-ascii?Q?1Lm7NcOgwW8RRz/TtOcUOaRQZ6hksUQjCd6G9UGdoR0tnAQ8VLcTGvMXScyF?=
 =?us-ascii?Q?UU1GmzWrwO/Hd/4aAFm43A1w5wLAm0pO93PMyyaX7TVXu9YKIpIGuE/pcw3S?=
 =?us-ascii?Q?Oc17KWqyOXTjPVI8m9al9TusIu+D5Ii4bb/XDAWs66Ox2Agn6yic1Keojpfp?=
 =?us-ascii?Q?R3/MRadUOA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OWbKg5ARY6ZLxL0Sb7Ohtcqz1sUzbXr7WrkNUZy7SnmkO/BdGGSAuVJurkwHbauREjtLQaAE6Ju2k3Tjicqeha6CHYQzIVrGrfZhsWelsMFrOliM5mo5UwcTMG6Ufc4uE3W/fxSKbfysr7lL/nqLn2oBDMNwOE7927lqNp/ezk3JwWyK5/obtCyM9BthHMeei6u6UAFgr7fNoOw8VjxFuCwGj8+9neqSWZUCLLx1JW2DtCR0FBWjSmSlo0x2/Bdihn7oEvR+k7B7FpeXXx5CHEN7u3EIcaiIPZV+1/XGBSCrbiOWVqdO69ecV1STePDp94i1FiOphBjfxrfSXZQ6Qw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPFC0624F2CA.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cace975e-ff59-4a56-3133-08de9c45bcb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 05:54:06.5118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UHJVA4Pr/9HpZP+kuC1QWB338XwN+Thh3vcxCzPRf2s/vheC5ugD26M9ScRo51iUbwLXpWnRGelhbyIqX/0e9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6622
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: quoted-printable
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,SJ5PPFC0624F2CA.namprd11.prod.outlook.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jia.yao@intel.com,m:stable@vger.kernel.org,m:shuicheng.lin@intel.com,m:matthew.d.roper@intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:andi.shyti@linux.intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[maciej.plewka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[maciej.plewka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 35C3D417308
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


This fix looks good from compute UMD perspective.

Acked-by: Maciej Plewka <maciej.plewka@intel.com>
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu usta=
wy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w trans=
akcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.

