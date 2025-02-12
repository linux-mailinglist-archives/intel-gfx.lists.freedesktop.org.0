Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21952A3260F
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 13:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 916A610E881;
	Wed, 12 Feb 2025 12:43:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fQX3Qwjv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE79E10E880;
 Wed, 12 Feb 2025 12:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739364216; x=1770900216;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2g5VbUAxMVB0RZAZZ1U2L5cw06l4kRTAZA+LeG6do64=;
 b=fQX3QwjvuYyjUPG/+j60skUR8JDqfn++cpejDZtF+m9ymOO0Lb2HwBdQ
 sMeOxn2PfyiT1uaaCujALLazkjNDUSivXH3qNhO0nw5RerXWOl00pihuz
 ZYhc7BgyYeRcE3ORdXk+WAXMdpsSkuXZ56gXoHepOdgFOTK5auI8vBEr+
 NYfrgkg9/idnEoXFjzElY+HD/trUpFyZ2DFIBTyCYITHcvZ4gaFTSKQBG
 7AqUxw177oxo9vsjMVm6We8lmD2vie+gyFU/oEsu7AYuoud4m7nnjTyNu
 N09ASIoso6XN+z/ErpT+pvlEyOLha+XkN1Uj140F8b4O9bgM9prScMnnb g==;
X-CSE-ConnectionGUID: JbOyI+nqSqapKitVevKlxw==
X-CSE-MsgGUID: zbWd7ySGSvaQoyI4Orq1hQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40137953"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40137953"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 04:43:36 -0800
X-CSE-ConnectionGUID: upAd4QoQSAezyRQVkiICdw==
X-CSE-MsgGUID: 9/PvaVqoSyWrDbg16aB8ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113019601"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 04:43:35 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 04:43:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 04:43:34 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 04:43:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RcL9qnU0FwFg8ntp97C4q052P4iRaX7F3XPnfW/MhhEoU30y4UY5QHnz9iWiWQXKXDME/BAYPbHC1lnw9+N1ufrKnsV1PG5d9BAzv+gWvllh9ZsEc6W7vRoRHqM5I1Bx/jWjGV6Bh7n03iOEjWQZL1/M0sZNzq7ABJvnufFrco6aKEeBR17losWPR4KUEZYQjO2KK+S3JLxEEAh+8uJPxZGtiSsNe3fsCedGX6x7aMw09kmfeVEtF2shMabNhBBTPzLmf4DISr2oXlB7ACf8iEnRruKiXH7MSbTKDS3GgIN0detixeSO2UfHbv5/HevSDhACPVL7l78DM1v6tfYhcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U9jY9Dc9MvGsbHQeEvDpL9cgFvSBcV9KqvUR9BB+DcI=;
 b=Tr7OH5FEdprCUYXQQsBVAGkgBYDaOrwUIj00wt19xanrv5zqAL2CvcJOWtFvF5reEAJyz76n3Kv0hCrP+fCs7ffLSDn0gL5KJ13n3CCbgUqf35G8iT3xhcHS+gt957ffvlDtGJpNoPLJtDj8LkrYeBxedwu3T6rVe14Spj8JUa+LaLmQNody1mqtGkIF9lSQd0LVlgGdYSy7PqY8AlVL77EagT/ZCIwDaOQjj2DEGM2EFBsCGrhn3mZX8AHC5WbjfT3AiXqgK/86xa2h5iXA5FuYPdBPFUWc/ZDVL9o1S7l1lGQCTHCEXFhVdwuVymZMmO/3RMJuwo0vYx02N3+JtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by MW3PR11MB4601.namprd11.prod.outlook.com (2603:10b6:303:59::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Wed, 12 Feb
 2025 12:42:51 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%4]) with mapi id 15.20.8445.008; Wed, 12 Feb 2025
 12:42:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/reg: use REG_BIT and friends to define DP
 registers
Thread-Topic: [PATCH 1/3] drm/i915/reg: use REG_BIT and friends to define DP
 registers
Thread-Index: AQHbeWU+gZPhJNHpU0uO8z34s/S6iLNDVwGwgAAaJYCAADMuQA==
Date: Wed, 12 Feb 2025 12:42:50 +0000
Message-ID: <MW4PR11MB6761DEF372C2D1F1ED917538E3FC2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <cover.1738935286.git.jani.nikula@intel.com>
 <719f1ceb87262ae49bb20209d3928da343126226.1738935286.git.jani.nikula@intel.com>
 <SN7PR11MB6750130E77EEDC5C1700E211E3FC2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87v7tfzem8.fsf@intel.com>
In-Reply-To: <87v7tfzem8.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|MW3PR11MB4601:EE_
x-ms-office365-filtering-correlation-id: c852cc9b-4b1f-4bf4-c25d-08dd4b62c322
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?mqlX3fHOz26dPoE56KmtT+lrntHpR8X3FDIB8NpgmXPG3IkIGt5iJb1YoAuz?=
 =?us-ascii?Q?krc4H3FiXsPcZTqDA8GT/liT5R7dBjqao0ELFE9V1BeWiIMo/kx86ydLv0WA?=
 =?us-ascii?Q?X4GRZWPGEj0WsI5I3PsWWvYtZ+Lk9sg/kv6Zzawql4xKR0fuh54exhwx9W9O?=
 =?us-ascii?Q?uVDQExf6t1MQ1BMN0qL/h6lz5S/fU7ymBJtuv6j3mHAKYliTz8K2ZialDvRM?=
 =?us-ascii?Q?PP1cEic/QSK+nBdW3lCOJNAoyGhi2U1upz+l4OBIgl+VsHhQ0+GxDxnUPQqH?=
 =?us-ascii?Q?iXVoGNaRlB8vwmbfwtAwtXPxITqCCoMmjSulCL8AYXC8ABI0qbQKy/k4UPLc?=
 =?us-ascii?Q?uJJ1AnpvRE7UVo7V7tckXoneNGLedxWqiDwFh6qdh4e8G00q+omfOkVaXlh1?=
 =?us-ascii?Q?r7y4+Advs36wLIWCFqDt7LEJbQ6g3FBoTnz1voImnO7k/L3pXx5ESEJXW0d7?=
 =?us-ascii?Q?CcIKrAuLf6fizS3KZCdvEYjMi3qa2LzX0MNkVHziViLFjZ55z5ncCSZEusRF?=
 =?us-ascii?Q?aJD1lBzW+Am+A3nw3yLvcwWv9adeEqmUejdf1sZfIpl+lUdAONzMSq5wuwgx?=
 =?us-ascii?Q?p3ACM9UZm1Dh7q4qCY2b8yrxoRqT5fQEoKyL5NHGwXA833NlLZkXGfTfyVH6?=
 =?us-ascii?Q?LLfgQjp7i+nSbzkMsppKCn+Ue+j4q8L+oj0ePm4zbdpSmfVHXJ2EGCGU7pa0?=
 =?us-ascii?Q?fyFPxS8sVivAtvqMCApXNVLC7Ee97S/moUYjb8XCiSvuHi705wZ4Op6OuDpK?=
 =?us-ascii?Q?uIQTp3mO2YUTBDeYPX1eX1KK5JljE0cLhfsspo+3pKT5Ag+QMEc2zWj0SBat?=
 =?us-ascii?Q?GlA+0jTOCEe9TXnNMCio1r+WOcs45HkOXBOwCos5zX93Ci6fgjj5NbZFOs34?=
 =?us-ascii?Q?28QqOZ4NKD+EBi/nSrOFRwBHmb4V3HNCDFuGKm5/b12E44PWCt6OQUtz9sg/?=
 =?us-ascii?Q?gOU/CcuScTsG5eE31pGWX+V5TplxMscifr8dbKae94DLkWc8RASPxP2eE2lV?=
 =?us-ascii?Q?U7uULDfBehX5zOIzKaK3jKLecezS4oa38B1/moVcvu95BRm1FtIcr8ai7pkk?=
 =?us-ascii?Q?6lUGvsgRcZ75Ik9lxRjEQGMHI1J1HOpSVI/sHPv2cjf+aM0iUbsJQ/SQOVF5?=
 =?us-ascii?Q?AWVUIcYyTe0ULGpTx8Br0quVarK0N8/HbpMwClbKDkymO/uJ2f54F35c86aw?=
 =?us-ascii?Q?+uLokFPwxqm+WJefMRf+L+ua3E5vnhUt3j8Th/r6xiJBNxNhPcmKEzo//Ahj?=
 =?us-ascii?Q?QcRd2D0JJPbuXbiSLzIIUjZyYWvB5W2HuE62m9fw/QW9WuSUZDMQXDh9RF8S?=
 =?us-ascii?Q?Dif4NLJVAS2thqKp7l95eI43hjIk490myscCFnTGLr6neUv5o+apx49ZOwXa?=
 =?us-ascii?Q?+efmRin0lPo+/IuO5EILgAfSXs9n208gF+tEwu+l3O2Fa7BxwyVYgFM9ekQG?=
 =?us-ascii?Q?i6o2x2cTMAds0quwZ/g3eNjQZmRY8/6I?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eTnFr2aEMflJllHl5j3KXPYYouAwonBDOyR9bTpamuTSAW/7KBqdslurKE60?=
 =?us-ascii?Q?Z9ze+2G58cWvoxU65/HiHXP4UxdfYZPeY6PlbvlpuX6XXL6uCKeJutz55UPz?=
 =?us-ascii?Q?8fHZWr25FpWtIm5T6bB6aqqE2nus9qAvpGujUUmUWEicGlRvrgqabD0/SB6o?=
 =?us-ascii?Q?k18LApFrIs01u3KEqPqQKkJ5jo2IQADwsG/0BDCDPaoyC6CGrzmd6YGcSUQr?=
 =?us-ascii?Q?XFsuDnSNzwny+5aILu5SR2waKAt80Gt25uZuhc7fsoRUsz9yZCMLKBGh9bB0?=
 =?us-ascii?Q?Py+d5Q5Fxcrr7awRMH1CmoJd3i+w0inAkVYwYt8mrjVBcWsNI3Zoygtwp/Io?=
 =?us-ascii?Q?SPdgFEkHnkbZ8rNemvCArJKasfZohbdkAHMUGaJRDASXGgf7rl6aax51bZUV?=
 =?us-ascii?Q?giNzbzaITNwyZLr9J9UnrBSNppH16gnwfe++ov07Ixf5iRlkhEQBYyNMniku?=
 =?us-ascii?Q?hgD2+BXu/NG7CrKY64rr618+vDDdfdA32v1wmIoCIfr9tRhqnCpC1ReyzaOd?=
 =?us-ascii?Q?Nsgv3XuRjwtxWPqqsd7VtUIeIL178garNONJc3Ie9z69vaw8PhOEsiZf2L9U?=
 =?us-ascii?Q?aKTPl5IMzD/m4Y94CglXG9gBNPDFinPRAymPpQxWRo1iVsMibOQbO0fD07Hq?=
 =?us-ascii?Q?KJuUkE4ML2+G5SkCY1Ed3R9iVmwkvedsFPuofKNYRwPOEuVpsPBghQ+nW2YI?=
 =?us-ascii?Q?oJki+w4DHfOz21wBVcoJn6yXuqYsJmcOlMNKX0GjJjFV4Al4Kh8gneFRDf87?=
 =?us-ascii?Q?QO5703uTIc+uWuQ3lHMaIgIWeGRSUl4YeS1RQBJ7Ht2BP1eJStoDDZvhBzCM?=
 =?us-ascii?Q?6HdFYaJvuynTFAQ3+8ylPNsWF8U71bOXYdhQxrYPORELwQVWF0rNeL6tzN1w?=
 =?us-ascii?Q?R95h0m3xAjcDMh7iJ0vHkE+OA1LXVgFQvt5Sx78fAG82EEjXXgvZ/nX4kk1L?=
 =?us-ascii?Q?wRuRQCd2D3skobM5P9zZUDGSx+99SN4lO4K0L/lfN+MKVTHsKxUpsic1kPkv?=
 =?us-ascii?Q?Q9k85xP+KMP+2Y1Q3K1IiUTU0arm17D4N42oM00NziPgfwx1HaWajbVb+uoD?=
 =?us-ascii?Q?Px1BsXNtCgcnBSf9whApwPxKv2oQZ4ZKSXROJuk35s9mKcfnww0HUDE0DlLW?=
 =?us-ascii?Q?DPxtbKp1pKVfoWiv2IJ9rKdaMgphzd8U5L/3VYlS0VRm9cpkeU+OX7MrAmyK?=
 =?us-ascii?Q?BOskyhA0RYAp9oNzceljEmPCH2BsFd8wshYcCYVEN1tG1lSqyRs7+3geu7i2?=
 =?us-ascii?Q?w3Z85UGlpX+QMm2+K4TFtyo51JOZSyZ2jOetOty0UtKZynx2G40mDpTecNEz?=
 =?us-ascii?Q?X9aIFQTJrSfN40xH2R7vNPK1JM1XH7z5UczJpoWnDzrCpnXsn/HqZ1axvxHH?=
 =?us-ascii?Q?QC9+xBjgFyVzc69dSBDVDplPLG4Mn//Ip7GlvYj3b+IhFkAYl73ONFelIpV7?=
 =?us-ascii?Q?NGKlQSq0T4TWZ0QfNJBkdWdyzqwOMYLOJOT/61zyN2nlhE/VgK6pyEUvgzJA?=
 =?us-ascii?Q?E3SjtkhzHCP6HviDGXRAnXeSVrY8pB37vFblqnvxNlREzRtgRW+MlPJC6vvB?=
 =?us-ascii?Q?bUOdkx6KEjL7lSavpDqCw0n1W83SFu2/gQeqWErz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c852cc9b-4b1f-4bf4-c25d-08dd4b62c322
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 12:42:50.8564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KtiLSp6yI3mRSTTa/ttKGRqfNG3YkaSc380PbLSETeZrw60NHVnYZMTu7b+H1w8XA48lW4QLhpKjGfrxK85T2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4601
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, February 12, 2025 3:09 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: RE: [PATCH 1/3] drm/i915/reg: use REG_BIT and friends to define =
DP
> registers
>=20
> On Wed, 12 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> >> b/drivers/gpu/drm/i915/i915_reg.h index 670cd2371f94..da658c3591f0
> >> 100644
> >> --- a/drivers/gpu/drm/i915/i915_reg.h
> >> +++ b/drivers/gpu/drm/i915/i915_reg.h
> >> @@ -1394,88 +1394,50 @@
> >>  #define VLV_DP_B             _MMIO(VLV_DISPLAY_BASE + 0x64100)
> >>  #define VLV_DP_C             _MMIO(VLV_DISPLAY_BASE + 0x64200)
> >>  #define CHV_DP_D             _MMIO(VLV_DISPLAY_BASE + 0x64300)
> >> -#define   DP_PORT_EN                 (1 << 31)
> >> -#define   DP_PIPE_SEL_SHIFT          30
> >> -#define   DP_PIPE_SEL_MASK           (1 << 30)
> >> -#define   DP_PIPE_SEL(pipe)          ((pipe) << 30)
> >> -#define   DP_PIPE_SEL_SHIFT_IVB              29
> >> -#define   DP_PIPE_SEL_MASK_IVB               (3 << 29)
> >> -#define   DP_PIPE_SEL_IVB(pipe)              ((pipe) << 29)
> >> +#define   DP_PORT_EN                 REG_BIT(31)
> >> +#define   DP_PIPE_SEL_MASK           REG_GENMASK(30, 30)
> >
> > Why not use REG_BIT() here REG_GENMASK for a single bit seems wrong
>=20
> ...because defining a MASK with BIT feels wrong to me. :)
>=20

Well in that case LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel
