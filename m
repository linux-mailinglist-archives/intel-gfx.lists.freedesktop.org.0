Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEDLGv3gC2qzPwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 06:03:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7EC57711F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 06:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D746210E062;
	Tue, 19 May 2026 04:03:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c8wZ9vWl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 150A310E062;
 Tue, 19 May 2026 04:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779163384; x=1810699384;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7b/nf/JTIvUpq3xNQ8dQ+OYrMJoCkHMUiicRDlztB0I=;
 b=c8wZ9vWlnxpOX85WI0D/lUz96JpNXx4t1FjFzz6xgdvZZwsTBvFBX5Z1
 oNby00UwURrVVZrXiIbxoUDv+qcfyVdzd7zitbnSMPjJ2WWThTvVhDUUj
 mEOoTW5Dw3ms77TpmoOWI4lAWEXWCHzW639CqUFBnA5hVgJt1r6ijaUO0
 3oijXCy/DkWiPJg/0snVv4eyBuGxqT4tA9PapNkzFx6a+Unya8PnaL2bh
 7L90Y3PEOyCZvUqaOrIrKBmYk090xS2liU0cfSOCd9t4u8cEACWdqt6q6
 I9vnNiq9p7mGFmYF8Wvb/wXgu3rXr7JPuONEtVlwrQjZMWuJ7Za+2obQ5 w==;
X-CSE-ConnectionGUID: Z/VXF/10R2C3KuxAM3fFzA==
X-CSE-MsgGUID: FjCVSBH3RmWku4oTyj71Dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="105490878"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="105490878"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 21:03:03 -0700
X-CSE-ConnectionGUID: bV7+98e+T3GA4EoFT0YAuQ==
X-CSE-MsgGUID: DWuojXbYSh+9Cz/hk2NzZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="235189709"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 21:03:04 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 21:03:03 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 21:03:03 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 21:03:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tt1XhZurFYMtH1hNXM5WNcpzMCSDR0V4YP72FT2u1a80pddPYiFHBj9Isr4DQGeQ81NFnShRXm6LncyCuSjpsoh/6qzrzdXeQQVzDi6t4zM/2XvNszOkscSk2j6BDlT1YSIu544qgj/0vq0Kqvyvsx/+pmfInkP2WI5YsOHnnSfxAz2kxMzi3g1tPGAlk+28LczSHrLAlgOeMIDQX1wnJoAZpOpic2XEMn8rp9BLVTkSFInGl1m1mKtsEt72zrtR6x7nCw5259PQZNNm7vS68O4gN7GGGDxncD7jX/MJtXoqlfOtSESUBioJRZ+yGhCrztyW6m6sUS0gaT+GOYH78w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7b/nf/JTIvUpq3xNQ8dQ+OYrMJoCkHMUiicRDlztB0I=;
 b=n7hI0F5tXQ5OuMhQ3g4ag7rKlb88AIn07l/bOPV4PVPdlMSS1Mq+FpzCAN9vfsFp2yv+C5miIw1Y4B8HsMieVmkZcvOpnyC/dcd6/0/203CiBWtjmv5zEMCH9bsGluZENXfQS13cvq1S3w420puXOJQHW1nw++FXM/9VV511/btjhvIpag67pMbjU/BAnbqdzdAltdjeczkfetwVU2gH6ap6V7vCgz7PmukpspVCl1Y0gSW8HqQaVUIcXmstJqwKWyUifrKCUgP/Kucs2JGfmctqB4tUpvgRWJvL1qv/ZYOTESVW5XOBMOEZUrNtyhD6ck/n9nCgsmrGv2dKqIiuSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW3PR11MB4716.namprd11.prod.outlook.com
 (2603:10b6:303:53::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Tue, 19 May
 2026 04:02:57 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 04:02:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 01/31] drm/i915/buf_trans: align xe3plpd with VS/PE-O
 layout
Thread-Topic: [PATCH v3 01/31] drm/i915/buf_trans: align xe3plpd with VS/PE-O
 layout
Thread-Index: AQHc3cFPqgMG6T01g0KiTGUDPMVY1bYUy9oQgAABG4A=
Date: Tue, 19 May 2026 04:02:57 +0000
Message-ID: <DM3PPF208195D8D62983BD1DF18A1DDEFBBE3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-2-michal.grzelak@intel.com>
 <DM3PPF208195D8D615B34E58CF20078844AE3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D615B34E58CF20078844AE3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW3PR11MB4716:EE_
x-ms-office365-filtering-correlation-id: 65596be1-51ce-47fd-b12c-08deb55b82c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|11063799003|18002099003|56012099003|3023799003|4143699003;
x-microsoft-antispam-message-info: DHKzcde+ta2SjmqYll27c7BGsV/e/92TfEN/L8xs0/0+/FbkqvADCdQ54E5544COuXgScu6t30TXCB97yfCLS57VnzBZSR7fJroXOU1oV2vb92ICjt56p0Gk8YspjbSjN92HneXjW3d6u0V63ZXRAJMtjbmv73gdctklrqaNEeQNFoKJzMPYPJlpowhucXGgeESwvAcr4AbudiqS3xXnFvN0gwTiDZ/rAMEVB0s+mgqdoieXRDODUPBm00mnCuUgtTyFRxn+UZfFy3kQ9pAX/niBvHP634UMgROWXQjou2FVjoNvWvuxkcSYtiYSDMuTZPQZ+rz1IIzfbho4OsAXo5oiaQgY9nFFQPto5jycqVGTfMRR9o6UdAje1v7z3rRG/PMR3mI4RkIUete0ZuWgxcyBocz/IV3yTHAxTLb34SNbnwLVf4jijW8a1UAFocISwqv6hGRw/8iwOmahv8cLWC/wBZsk88wO7penDpewFceCfl4ehfYjArm3SxNC6xaMh+zdjVA+7kW7mLQOg89dwYFDypqDnwAym41jPWfXXEdHM8deJYn2C9VnIdZiUQ/DV/mYrFL4Ou4Eg4SZxnu7TpT15OA2GlrF6oogn4FlDL8ShU/ED2PK+2uxWw2gPOhHHiApVvQoGGCVmGlG/7SZ4WpH/f90lLBMdWHEpPmFyd1Z5liTM1IiA/FOK+IymSQEDcvOB+ucz7uoHHL5A3ibGLVwmtcYJs+HBccGrapsfrsCuQqI+wK3UV+ELZivrG+F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(11063799003)(18002099003)(56012099003)(3023799003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aDRUTTdzMlcxWTdYb3RmYXZJWklJRW5lVE96M3BSZnYxK2RtREJCWmpmY2dE?=
 =?utf-8?B?dU5EZDVGU2hlVk04RTI5M29HS3k0TG9JZDlsSytBdDladUlBVjFDT2lOQTZE?=
 =?utf-8?B?dGJoeWhEelN1QmlPWmZVOWRESmRSbnhaQnhrQ2g3QUh0RW8xL2dYOFliWjdB?=
 =?utf-8?B?SGdyMm5HVzA1QVlObjhvYkZ2ejVNSXFuY2o4UmxvYjJkVmhLL2wwK1RrZEYx?=
 =?utf-8?B?ZGY1Z1NjOHNzUjhZS0JTa09xRldoQTV5NWd0ZG9zNTFpVHZPSzk4MUV6U29T?=
 =?utf-8?B?SkN1V2pKRjBob0dPUG10VWM3V2ZKQ2lEd05RMDAyelZmSFVseXFDTHdRdFc1?=
 =?utf-8?B?b1dNaWNSVHJONTRXTXV5VGdRV1grZkN1QTRRMTA3djFRUWx4MFhwLzlhK0kv?=
 =?utf-8?B?WFNkZzhKMHhMRXRoZmluNndBMUI2NUxLOStWd0xzU1FwZHdEWG41MS9Xc2NO?=
 =?utf-8?B?bUMwQ21rcnpCYWREVWZ1aWd6TWdLV29TVUNwWmc1OUdwSjFsTjA4bDVsZHZS?=
 =?utf-8?B?allUVnJYd0JTZFZuTW9hOGdLenR4ZEN5Rk1YY0xldkdaa0NtWkwyWlpEU3dM?=
 =?utf-8?B?ZWZSQUI4M2VCL3RXSHJuY0Q3czZocHhSZHc3Rk15MmU0WDVwcjhlT282aGU1?=
 =?utf-8?B?ZGxmNThoY2dVelJWUjBqVTRmNzkvL09PeWRpbjVuMzZ6RC9Kc251dmhpOVEz?=
 =?utf-8?B?TEdmeWlFb3NLR25EYXpHVG5KSDFDOEVQYVZvZXBoa3d3U25OSXRwaWErK0V3?=
 =?utf-8?B?WFJURlVNeHpVN3QzZEtPZk5BZzErelZFRGtHbkh3Sm9rYjVYeGI3UUtHdGlj?=
 =?utf-8?B?TFQxdGhIaDJxZnE1MHRRdlZOaDV2dUh1dXYraVJNNFRRV3JrUWNvZ2NtcWdi?=
 =?utf-8?B?K25Ob29NQTN0ZnFyWDlqbDhKcVVYeWt0ejdrczhIWmptNlF6RzJCeS9HZW40?=
 =?utf-8?B?TFBpZ1NOSW1kQkdyL3NZblpPdWkzSjQ1NkkyYjZpM0VpeXdwY0RHayt1ZUhm?=
 =?utf-8?B?S016bFlRY2JkS3gzcWtvY0dsUUJaUzlUVTNMdUdGem5EeHB2UDZtSlpzVTh3?=
 =?utf-8?B?TFlCZVlWdFc0cXNTTFk2eTA2RjFtdlVjcnBObFZYTW5YenBUMnZVRVJkZnox?=
 =?utf-8?B?WUxQcFVSNjhiTDdDVFh3Q1JSaldKVzhHaE1BbmJyNytVeDduVUY2bnZHb0JU?=
 =?utf-8?B?OVZnNnh5SHdiajlPN05OcGsyMjZWMzdwQ05VSytYeEtWd0NIU0xJN1JjNmdR?=
 =?utf-8?B?MkhiY3ZuVEJBbnVaeEIxampyeHJld2hzU3FLbXhseThqYkNkT0dSNmhRNFF2?=
 =?utf-8?B?cDE5eGdqTmtibFZaeVRpanEwZm1lcFNYSDV3THRJZnZwQlV6UXljRFNENGQ3?=
 =?utf-8?B?L2M2V0Zzbng5Q2FPQmY4SkgxZllOZXZPeEtFeEErTVlyOGsvTHF6Z2xEVFRn?=
 =?utf-8?B?eUV3SEdFV1VDbFV4b3FmL09NeW9JMkUxU2wvQzRsUERaWlplbFdoYm5VVWM1?=
 =?utf-8?B?anI2NkNMN0xiNk1vVHlKVlRYSDNOb2FwVGpIaWlXci9iRWh0L1gySytOKzFD?=
 =?utf-8?B?WE1LdG5sWldEYzYxRlM1aWcyUnpzNElNN1hzNEpCNzhRSllVaU9NTEZYODRV?=
 =?utf-8?B?U1VHZFNLb0l6dEl2SEdBcjMxeFlMUW1yTGk5S1Z6dDJ5czFFMDUxL3cvQXpL?=
 =?utf-8?B?aE9TaWlKQjcwWGdvZWlCS0RvSjZoRXBpT01JQjkxNEtNSm5OZEQzL0RtS0Z5?=
 =?utf-8?B?SzJma1J2TU53NkpnM2hvZDhCT3orNm15ZENZYTVkcWVxOTNDM2d5MHVSTTNI?=
 =?utf-8?B?eiswb0QvTEVob1NNMWlHcm5OdWZ1UjBWS05CY01sTER5RUxCMFJaVXduZ3hT?=
 =?utf-8?B?aTBiaXBvY2Rya2RoRWpDUUlFY1ZHeUkvRmJyS2VuMkdQNnU0QWZZM0drbGpN?=
 =?utf-8?B?Nnk2TTdReEFRa0dIM0xzeDBoQm56QlRwbmVnMlJ0WGNVaVRaMS9XMVc0SXQ0?=
 =?utf-8?B?ampzTlJ4WFM4aHJ6Y25iaFFJbjBNVzlRWXlIYnNMVEwvZDVnQkxiSzliZjFt?=
 =?utf-8?B?eWxFNDN6U0RERDZvclRMN1lYQ29DajY0UGErN1VwN1F4VW1wOFh5cXZVUHFi?=
 =?utf-8?B?VkNVZVQ2cjV6SC80UGJUcU54Vmh4K29LMkRaSGJYUFNJUy80SFl6SERYZzM2?=
 =?utf-8?B?ZVFtZjIyK2NpZUZnZEc5c3V1L3lCMEdBZzNST0RqNWMyc2ZaOWFwV1ZiZjgv?=
 =?utf-8?B?elpUczFLSlZCS2hxa0EzZWtQT0hUTEs4TTBhRXNSOHBpK292R2tXVzJaM2Z4?=
 =?utf-8?B?eWFnNGFaY0ZhVmVlWE4zWDFpNE41ZVYwUzByU1UvbXIwdXpIeUpSUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dKLWW0dHTo0X+l6XS2n24G3SuY7dUpPNTBs/xFMwv8leA980WFpEFZVBn3UTAbVds554irKaFNZjMrDGYf0FzWMStqSmVAgPhTUi1gVikoD+WlZhGASm8tMjcSusJtYoAxrIHaVevcwo8W2zpsPtYiAz7MyVXvPeNT+uJA0VOA9yK8UBRqS+oWLO+dktykNMvoN+ZPNq/gtUpya4R8Pd1/MhIs5vLlzh+ZSThBk4wn1FQ3A3urBvnywtbJZP7NCxg4r+L3wck6UWCsTOi8KiW8LMmYughvOBtNyh4gWoFAHaEMAp+dRkUwaMCPyEMwfyVKkOrXinVWqoOaTcCqoRVA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65596be1-51ce-47fd-b12c-08deb55b82c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 04:02:57.3651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gr/v+Ox/m4Z0wjLc5zlBVGGKK1pDjXXccmKNS78W2UYhmWqOub8IvQA9IefHJ3WG+7S0xQyf5gjjiYz3da8AbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6D7EC57711F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggdjMgMDEvMzFdIGRybS9pOTE1L2J1Zl90cmFuczogYWxp
Z24geGUzcGxwZCB3aXRoIFZTL1BFLQ0KPiBPIGxheW91dA0KPiANCj4gPiBTdWJqZWN0OiBbUEFU
Q0ggdjMgMDEvMzFdIGRybS9pOTE1L2J1Zl90cmFuczogYWxpZ24geGUzcGxwZCB3aXRoDQo+ID4g
VlMvUEUtTyBsYXlvdXQNCg0KTml0OiBTaW5jZSBjaGFuZ2VzIGFyZSB0YXJnZXRlZCB0b3dhcmRz
IExUIFBIWSBoZXJlIG1heSBzdWJqZWN0IHNob3VsZCBiZSBkcm0vaTkxNS9sdF9waHkNCg0KUmVn
YXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiA+DQo+ID4gQWxpZ24gc3RydWN0IHhlM3BscGRfbHRf
cGh5X2J1Zl90cmFucyB0byBtYXRjaCBsYXlvdXQgZm91bmQgaW4gVnN3aW5nDQo+ID4gLyBQcmVl
bXBoYXNpcyBPdmVycmlkZSB0YWJsZXMuDQo+ID4NCj4gPiBNb3ZlIHR4c3dpbmcgJiB0eHN3aW5n
X2xldmVsIHRvIHRoZSBlbmQgb2YgdGhlIHN0cnVjdC4gS2VlcCBvcmRlcg0KPiA+IGJldHdlZW4g
dHhzd2luZyAmIHR4c3dpbmdfbGV2ZWwgY29sdW1ucyBpbiB4ZTNwbHBkX2x0XyogdGFibGVzLg0K
PiA+DQo+ID4gTW92ZSBwb3N0X2N1cnNvciBmcm9tIHRoaXJkIGZpZWxkIHRvIHNlY29uZC4NCj4g
Pg0KPiA+IHYyLT52Mw0KPiA+IC0gZml4IHJlYmFzZSdzIGNvbmZsaWN0DQo+ID4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hhbC5ncnplbGFrQGludGVsLmNvbT4NCj4g
DQo+IExHVE0sDQo+IFJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGlu
dGVsLmNvbT4NCj4gDQo+ID4gLS0tDQo+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aV9idWZfdHJhbnMuYyAgICB8IDcyICsrKysrKysrKy0tLS0tLS0tLS0NCj4gPiAgLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oICAgIHwgIDYgKy0NCj4gPiAgMiBmaWxl
cyBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCAzOSBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJh
bnMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3Ry
YW5zLmMNCj4gPiBpbmRleCA0Y2QxZTRkNzZjN2FmLi45MDg1NzdiMDRhMTRlIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3Ry
YW5zLmMNCj4gPiBAQCAtMTExOCw1MCArMTExOCw1MCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlu
dGVsX2RkaV9idWZfdHJhbnMNCj4gPiBtdGxfYzIwX3RyYW5zX3VoYnIgPSB7DQo+ID4NCj4gPiAg
LyogRFAxLjQgKi8NCj4gPiAgc3RhdGljIGNvbnN0IHVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNf
ZW50cnkgX3hlM3BscGRfbHRfdHJhbnNfZHAxNFtdID0gew0KPiA+IC0JeyAubHQgPSB7IDEsIDAs
IDAsIDIxLCAwICB9IH0sDQo+ID4gLQl7IC5sdCA9IHsgMSwgMSwgMCwgMjQsIDMgIH0gfSwNCj4g
PiAtCXsgLmx0ID0geyAxLCAyLCAwLCAyOCwgNyAgfSB9LA0KPiA+IC0JeyAubHQgPSB7IDAsIDMs
IDAsIDM1LCAxMyB9IH0sDQo+ID4gLQl7IC5sdCA9IHsgMSwgMSwgMCwgMjcsIDAgIH0gfSwNCj4g
PiAtCXsgLmx0ID0geyAxLCAyLCAwLCAzMSwgNSAgfSB9LA0KPiA+IC0JeyAubHQgPSB7IDAsIDMs
IDAsIDM3LCAxMSB9IH0sDQo+ID4gLQl7IC5sdCA9IHsgMSwgMiwgMCwgMzUsIDAgIH0gfSwNCj4g
PiAtCXsgLmx0ID0geyAwLCAzLCAwLCA0MSwgNyAgfSB9LA0KPiA+IC0JeyAubHQgPSB7IDAsIDMs
IDAsIDQ4LCAwICB9IH0sDQo+ID4gKwl7IC5sdCA9IHsgMjEsIDAsICAwLCAxLCAwIH0gfSwNCj4g
PiArCXsgLmx0ID0geyAyNCwgMCwgIDMsIDEsIDEgfSB9LA0KPiA+ICsJeyAubHQgPSB7IDI4LCAw
LCAgNywgMSwgMiB9IH0sDQo+ID4gKwl7IC5sdCA9IHsgMzUsIDAsIDEzLCAwLCAzIH0gfSwNCj4g
PiArCXsgLmx0ID0geyAyNywgMCwgIDAsIDEsIDEgfSB9LA0KPiA+ICsJeyAubHQgPSB7IDMxLCAw
LCAgNSwgMSwgMiB9IH0sDQo+ID4gKwl7IC5sdCA9IHsgMzcsIDAsIDExLCAwLCAzIH0gfSwNCj4g
PiArCXsgLmx0ID0geyAzNSwgMCwgIDAsIDEsIDIgfSB9LA0KPiA+ICsJeyAubHQgPSB7IDQxLCAw
LCAgNywgMCwgMyB9IH0sDQo+ID4gKwl7IC5sdCA9IHsgNDgsIDAsICAwLCAwLCAzIH0gfSwNCj4g
PiAgfTsNCj4gPg0KPiA+ICAvKiBEUDIuMSAqLw0KPiA+ICBzdGF0aWMgY29uc3QgdW5pb24gaW50
ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSBfeGUzcGxwZF9sdF90cmFuc191aGJyW10gPSB7DQo+ID4g
LQl7IC5sdCA9IHsgMCwgMCwgMCwgNDgsIDAgIH0gfSwNCj4gPiAtCXsgLmx0ID0geyAwLCAwLCAw
LCA0MywgNSAgfSB9LA0KPiA+IC0JeyAubHQgPSB7IDAsIDAsIDAsIDQwLCA4ICB9IH0sDQo+ID4g
LQl7IC5sdCA9IHsgMCwgMCwgMCwgMzcsIDExIH0gfSwNCj4gPiAtCXsgLmx0ID0geyAwLCAwLCAw
LCAzMywgMTUgfSB9LA0KPiA+IC0JeyAubHQgPSB7IDAsIDAsIDIsIDQ2LCAwICB9IH0sDQo+ID4g
LQl7IC5sdCA9IHsgMCwgMCwgMiwgNDIsIDQgIH0gfSwNCj4gPiAtCXsgLmx0ID0geyAwLCAwLCAy
LCAzOCwgOCAgfSB9LA0KPiA+IC0JeyAubHQgPSB7IDAsIDAsIDIsIDM1LCAxMSB9IH0sDQo+ID4g
LQl7IC5sdCA9IHsgMCwgMCwgMiwgMzMsIDEzIH0gfSwNCj4gPiAtCXsgLmx0ID0geyAwLCAwLCA0
LCA0NCwgMCAgfSB9LA0KPiA+IC0JeyAubHQgPSB7IDAsIDAsIDQsIDQwLCA0ICB9IH0sDQo+ID4g
LQl7IC5sdCA9IHsgMCwgMCwgNCwgMzcsIDcgIH0gfSwNCj4gPiAtCXsgLmx0ID0geyAwLCAwLCA0
LCAzMywgMTEgfSB9LA0KPiA+IC0JeyAubHQgPSB7IDAsIDAsIDgsIDQwLCAwICB9IH0sDQo+ID4g
LQl7IC5sdCA9IHsgMSwgMCwgMiwgMjYsIDIgIH0gfSwNCj4gPiArCXsgLmx0ID0geyA0OCwgMCwg
IDAsIDAsIDAgfSB9LA0KPiA+ICsJeyAubHQgPSB7IDQzLCAwLCAgNSwgMCwgMCB9IH0sDQo+ID4g
Kwl7IC5sdCA9IHsgNDAsIDAsICA4LCAwLCAwIH0gfSwNCj4gPiArCXsgLmx0ID0geyAzNywgMCwg
MTEsIDAsIDAgfSB9LA0KPiA+ICsJeyAubHQgPSB7IDMzLCAwLCAxNSwgMCwgMCB9IH0sDQo+ID4g
Kwl7IC5sdCA9IHsgNDYsIDIsICAwLCAwLCAwIH0gfSwNCj4gPiArCXsgLmx0ID0geyA0MiwgMiwg
IDQsIDAsIDAgfSB9LA0KPiA+ICsJeyAubHQgPSB7IDM4LCAyLCAgOCwgMCwgMCB9IH0sDQo+ID4g
Kwl7IC5sdCA9IHsgMzUsIDIsIDExLCAwLCAwIH0gfSwNCj4gPiArCXsgLmx0ID0geyAzMywgMiwg
MTMsIDAsIDAgfSB9LA0KPiA+ICsJeyAubHQgPSB7IDQ0LCA0LCAgMCwgMCwgMCB9IH0sDQo+ID4g
Kwl7IC5sdCA9IHsgNDAsIDQsICA0LCAwLCAwIH0gfSwNCj4gPiArCXsgLmx0ID0geyAzNywgNCwg
IDcsIDAsIDAgfSB9LA0KPiA+ICsJeyAubHQgPSB7IDMzLCA0LCAxMSwgMCwgMCB9IH0sDQo+ID4g
Kwl7IC5sdCA9IHsgNDAsIDgsICAwLCAwLCAwIH0gfSwNCj4gPiArCXsgLmx0ID0geyAyNiwgMiwg
IDIsIDEsIDAgfSB9LA0KPiA+ICB9Ow0KPiA+DQo+ID4gIC8qIGVEcCAqLw0KPiA+ICBzdGF0aWMg
Y29uc3QgdW5pb24gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSBfeGUzcGxwZF9sdF90cmFuc19l
ZHBbXSA9IHsNCj4gPiAtCXsgLmx0ID0geyAxLCAwLCAwLCAxMiwgMCB9IH0sDQo+ID4gLQl7IC5s
dCA9IHsgMSwgMSwgMCwgMTMsIDEgfSB9LA0KPiA+IC0JeyAubHQgPSB7IDEsIDIsIDAsIDE1LCAz
IH0gfSwNCj4gPiAtCXsgLmx0ID0geyAxLCAzLCAwLCAxOSwgNyB9IH0sDQo+ID4gLQl7IC5sdCA9
IHsgMSwgMSwgMCwgMTQsIDAgfSB9LA0KPiA+IC0JeyAubHQgPSB7IDEsIDIsIDAsIDE2LCAyIH0g
fSwNCj4gPiAtCXsgLmx0ID0geyAxLCAzLCAwLCAyMSwgNSB9IH0sDQo+ID4gLQl7IC5sdCA9IHsg
MSwgMiwgMCwgMTgsIDAgfSB9LA0KPiA+IC0JeyAubHQgPSB7IDEsIDMsIDAsIDIyLCA0IH0gfSwN
Cj4gPiAtCXsgLmx0ID0geyAxLCAzLCAwLCAyNiwgMCB9IH0sDQo+ID4gKwl7IC5sdCA9IHsgMTIs
IDAsIDAsIDEsIDAgfSB9LA0KPiA+ICsJeyAubHQgPSB7IDEzLCAwLCAxLCAxLCAxIH0gfSwNCj4g
PiArCXsgLmx0ID0geyAxNSwgMCwgMywgMSwgMiB9IH0sDQo+ID4gKwl7IC5sdCA9IHsgMTksIDAs
IDcsIDEsIDMgfSB9LA0KPiA+ICsJeyAubHQgPSB7IDE0LCAwLCAwLCAxLCAxIH0gfSwNCj4gPiAr
CXsgLmx0ID0geyAxNiwgMCwgMiwgMSwgMiB9IH0sDQo+ID4gKwl7IC5sdCA9IHsgMjEsIDAsIDUs
IDEsIDMgfSB9LA0KPiA+ICsJeyAubHQgPSB7IDE4LCAwLCAwLCAxLCAyIH0gfSwNCj4gPiArCXsg
Lmx0ID0geyAyMiwgMCwgNCwgMSwgMyB9IH0sDQo+ID4gKwl7IC5sdCA9IHsgMjYsIDAsIDAsIDEs
IDMgfSB9LA0KPiA+ICB9Ow0KPiA+DQo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRp
X2J1Zl90cmFucyB4ZTNwbHBkX2x0X3RyYW5zX2RwMTQgPSB7DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuaA0KPiA+IGlu
ZGV4IDk2OTg2OTdmMzkxNzcuLmFjOWFjZGVjNmQyOTggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuaA0KPiA+IEBA
IC01MSwxMSArNTEsMTEgQEAgc3RydWN0IGRnMl9zbnBzX3BoeV9idWZfdHJhbnMgeyAgfTsNCj4g
Pg0KPiA+ICBzdHJ1Y3QgeGUzcGxwZF9sdF9waHlfYnVmX3RyYW5zIHsNCj4gPiAtCXU4IHR4c3dp
bmc7DQo+ID4gLQl1OCB0eHN3aW5nX2xldmVsOw0KPiA+IC0JdTggcHJlX2N1cnNvcjsNCj4gPiAg
CXU4IG1haW5fY3Vyc29yOw0KPiA+ICsJdTggcHJlX2N1cnNvcjsNCj4gPiAgCXU4IHBvc3RfY3Vy
c29yOw0KPiA+ICsJdTggdHhzd2luZzsNCj4gPiArCXU4IHR4c3dpbmdfbGV2ZWw7DQo+ID4gIH07
DQo+ID4NCj4gPiAgdW5pb24gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSB7DQo+ID4gLS0NCj4g
PiAyLjQ1LjINCg0K
