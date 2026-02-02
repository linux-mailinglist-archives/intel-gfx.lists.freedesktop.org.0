Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2A4hByL8gGn9DQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 20:33:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65122D08DF
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 20:33:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3B0D10E2D6;
	Mon,  2 Feb 2026 19:33:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M7AAF8ce";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5B0210E27D;
 Mon,  2 Feb 2026 19:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770060831; x=1801596831;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8JkUdCToELJUZngsck87LHCvZs/ZvYXH711amJqscyc=;
 b=M7AAF8ceNeL4bNZOocMA0SaNBuz+1caTDvSFmmU0Iv/wtjcitK2dYrnC
 aNMHS9BaqFi5fp5hRoYqdhUGIGZU8ISWVB0aDK69e9mg4JGntkMzU87UO
 YuqPf2HehYv8Kww93QEdDR4BYcXp/HOZZruaMH0k8ymHs54Lou9I12COM
 dcKK6SEIceKVSQoCMTwAvK/OQyF5Av5oj3k1f5D5Yl1RNgJNdPoImMzkw
 7Wz9cf+FFJGJo6GRwevWd7+JGuhv9xF5pFYoOvIFJwkFArn5rnsOJKsVa
 Qozc8FkorVUmA1Uw1SKpH1e8PEG640CGVoWdnPw7YZ70304/tLQUwFUMJ Q==;
X-CSE-ConnectionGUID: S8/eUIB1Rgu6jByv5jequg==
X-CSE-MsgGUID: AoyO0oUFQCGu7hUYiuh2GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="82653142"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="82653142"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 11:33:50 -0800
X-CSE-ConnectionGUID: H4+UcSBMQ1yWvmFxKkemKg==
X-CSE-MsgGUID: UwWWR/e8S46xVb14CbJFxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209757126"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 11:33:27 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 11:33:26 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 11:33:26 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.24) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 11:33:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lexpxw55SbIFNykiwvq+Z0UCO3A50OVup0SxDtpj4gssOs4F1BOEHYKeSqcEpJxW3HjP7ITAfxhh7N4ghzRVK/dexyzYTqZgrOIvxZSN0xbMvGyAAAZJXGuVVNU9KqeOFs4FYqbOoDXygO8/EjxAHu3ZBFSucXrqVPpF5qu1lF57NMJo0Q+xqGh5kx9+QljgOztuRa60vxCylvVazmrQ/8B9o2TJ5+NwnxgMmZyX2OFKQQVSVDmx2eCyPWvBBeV34wJMIHRiVihJouPlHUca9iH1gD8RBRfJ4FMVI7syUKTYZITTFOTGz+YINa8rg7bdTf/JxZBCEdyYHumgmGuxmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0OxI1GG4DClpgsnnyozDRq+9HuW4yd4P46Uufxml+/o=;
 b=lNsbkcFFEG67pgk1AhmVV0qdfhvpSR60ReFba/EMRlkckMupkCvZn01XZdZw+b4FAW4PH8FKK4eg25Sk5NwplgpTy4Q/wKYAmUkzuUVW8+8y3p5W7bvxPL99FEiBQu+qWA6ZeJUOY2svPEE9PpVi3jxZbiyC2MRgeBd+eHY+SVqdAiHJ+ZznfA2CJyuXlrN0l69msEcCac/xRBDAQwY7pSzc8XIJO4N9fLabOwx4o/m7Wzw3LGXFkAEadQXmWDHCIBCWL1dscSnQ1yMCZ/DDPBHmLNo3QN1C0IZkRuFGGkChLCNMEgblpp6p+7Lvcb3n4zx8BOqO+0YmoRNc4JCrXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB8211.namprd11.prod.outlook.com (2603:10b6:610:15f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 19:33:24 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 19:33:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [i915-rt v5 02/21] drm/i915/display: Make get_vblank_counter use
 intel_de_read_fw()
Thread-Topic: [i915-rt v5 02/21] drm/i915/display: Make get_vblank_counter use
 intel_de_read_fw()
Thread-Index: AQHcit1du8phIB0FmEWsxBdrBjSiT7Vv313A
Date: Mon, 2 Feb 2026 19:33:24 +0000
Message-ID: <DM4PR11MB6360DCDB16B2E2349058CABBF49AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121135318.651622-1-dev@lankhorst.se>
 <20260121135318.651622-3-dev@lankhorst.se>
In-Reply-To: <20260121135318.651622-3-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB8211:EE_
x-ms-office365-filtering-correlation-id: 4e4ec0e7-61bd-4211-593d-08de6291ee67
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?SYCZexMbQTAaTnLTJ4uC4eBHADCvO87Ur7cnSk2NVUxcib2BPxVrhrVskMYR?=
 =?us-ascii?Q?VqRwL1WVsqAB0BW0AexpjniwqSGMFPSrwJ9s7DXw10uhrKyEM3P53ZPcyOIb?=
 =?us-ascii?Q?kIN+Kgl+tJ1NIu0Hgc5ybusgJAgCom/rUkVWbX86yp/6Tp41GZgRRiqWrUxX?=
 =?us-ascii?Q?5e3U/EDjq7m6o5OwT83CxJ5nuRTm5qh1hmISyfvDLK3cRFBOZipgVsbVkuVF?=
 =?us-ascii?Q?TDZ/qzsz2WopKp3RozJ9jJffSG0w7MMQHsgmFGll4X1Z193TmrbmYRytZkQc?=
 =?us-ascii?Q?G+pgMnaaD6WWY0us9FNirfIZilRTyFuOPC32RqoBSvYbI8chS05AY8nzw4QC?=
 =?us-ascii?Q?ahcnvlhn5qY4ELsusQyq+xXsDFXzfXKYXasxB2LWun58aALIE7GJKRTBBGVk?=
 =?us-ascii?Q?ikEk+hLk2tx+7Sj+yQIgw+6F6+BBkeOL9V8wcYXXypeFYrssUkFSbBUWOgeL?=
 =?us-ascii?Q?oz9XKRWN7uvPKBue9MsYyVUxjWiZpAiFfcrir5pvP/+BjkGU5jbSSFH369TE?=
 =?us-ascii?Q?brvWEBtpTSmwKZFXP/bFatgt2g59VgwjN6oFFR0fS3dSBHvTBuyGDxSGkZkq?=
 =?us-ascii?Q?ZG96oTTuzK8UqNdmMvFf2AETAoGJeaH/1g5Pe0ADs7Y7uiHd3dF5ez+JEl90?=
 =?us-ascii?Q?Zkt/1wFnYcDWYaCidgjBOg8PjutdiMDn+OJ2A2Tf4GgDjtZrNM64MwhJ9Ioh?=
 =?us-ascii?Q?9cQefBWh1wc8CCVhXyiA5hFEIROvdSZGumkflw8kcL7oas5a4LXLcUtY06fb?=
 =?us-ascii?Q?5HC5dTvcbc2Shof0mR6VAuEWgToEFUWqJzTKlrDQUrHZukiIFWQIuzOfe2Xn?=
 =?us-ascii?Q?IId2WpYa+viZj2wp+Gbqp6BcSc08t3hSYeUQi4/eZpl6btxo/DQ6bvxY3wqj?=
 =?us-ascii?Q?578z0T9GbgNU+8e9X+hBC3TQjb498dOXLrVa3SL2YGTNKqMpKUJCVWqnoZGm?=
 =?us-ascii?Q?0qmvSkDdyDJhOg931bolkwWt/qw+K45RQhZ9jVSUcjYmL+5Lg/0d7Rm00/vX?=
 =?us-ascii?Q?y8EfKiqg6oq5z/Ax2vQIJQZ/I2+3WkYdbV4SXdnRRCsc67sbA4D0aTFxuRJ/?=
 =?us-ascii?Q?SVacbgvVgrNy8imyHW/dtyfCxazs90LhfIzbKWgGDw/sUmDe4qjXVnQOAZIe?=
 =?us-ascii?Q?DxyTOcxkakaBsoSl7UPvFwACXmuMrhzh8vGl6cp6YdhDa+OIiMjcWAKeHnwr?=
 =?us-ascii?Q?DWXMYdwcQSgtYO4cM9ejdrUGK4a1jFDTEDZlrKM/8aZ2YBrHLShNW9VkJ4Nm?=
 =?us-ascii?Q?vrmLvfu+CvxSqx4uUE3CLvfFtnOfzFNQDGSM4bdD9tneQW7JZEntSE9DGZtI?=
 =?us-ascii?Q?50zwiy2c9IpCobXgUruEAWOtZuBRuNS6pbs8nKfRTZSXIRsyN3f3VgB5VQII?=
 =?us-ascii?Q?8RGNyBVHF0w0EGmiwSzI6TnqcRt65Np9rwP+WCInfupsuMjWxby3OgWdd7Uz?=
 =?us-ascii?Q?6zQVbVA1AwXJ9/4xi1E+Pqalqz68x03jzvzIu/qjQkYwazw3CfxQSqx74Gk+?=
 =?us-ascii?Q?R2RhzbxhxGpvIZSEMlR2YOuDFkp38An1vWQ8lKVpOluSXBmSUGWDFFZ2zXYh?=
 =?us-ascii?Q?Njp6MTWKjsfe7aNGF+CPyli1DhxRs4H54yVYPY3Fywcuhdy5KKuzDTSAw6Qk?=
 =?us-ascii?Q?iopNVCHPVsIP99M6wPD6xfE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1uOAxfTbAq+tedinDEQ51Xxq5Gtzbh+sa1y+X4QDCwfAK1ovTHS7eqcDZIYl?=
 =?us-ascii?Q?vvAruTqp+qGqkTE0qV+zW6Vsrh6Uo+5IJd9SBESaAHFfkqZ0m3yrszJS8r/U?=
 =?us-ascii?Q?mZBV5cxvjAe6PvokfWhTTyUtgMmKGFirdND+2SWwbikOJh5BWBoTLB9svDdT?=
 =?us-ascii?Q?Cehr6jmYy+VfE78V9kDcwoouu2kqaUwDFxFGil31qYRoYbxlKVr469UxRDBS?=
 =?us-ascii?Q?8Q4AKzdr1fcrXiYnA838ts6h03kvddDJEKQyvJvjT2J8Z4fm23TystLWMibh?=
 =?us-ascii?Q?6gYdYMlHGFXozHrh9WLO7JzoGOK9n+ofjkkXArO22i8rcivlARj4Nnis+ytc?=
 =?us-ascii?Q?PjwvRplz6vOGmEMczQdhYKPZEAiMYAaTikDYOizvwGJGlrcUgbB0zUWFf7O9?=
 =?us-ascii?Q?Js5TsxLSwyWSwQkTdm3yQPM3mtCssKdElhxslaM3NOdlqrAS6HTHG6vbgQDR?=
 =?us-ascii?Q?4Ron1EdzbRk9cudr6mOFcgQNOEEAkfCq5hDWMqb2+BLJ4TzVSsDewXjwckEb?=
 =?us-ascii?Q?5ntTd5wUCAQfotlkzbER+2/nZ5aOxFf23rH0rTNzlHWb+0QT2lFCBZbz8hnd?=
 =?us-ascii?Q?DHtz//UEpd2gaOY98qh8iB1MzexTQ2K1ezMWilBmjn0rC3vXI89sSTKn6W6w?=
 =?us-ascii?Q?JVdsqYtR2+Y6Vg22LWV3y4CJjPMDX2NMCykfrfCSgK4fnkeMJcLx8ZXgENjk?=
 =?us-ascii?Q?P1N6zGshW4UTkMMbRRSsNB4ewJUyXJ54y/X3+K1AX7nMICB5aHq8wbNTdUBc?=
 =?us-ascii?Q?GtBk/RSgGUR4Ss8Xg9J53uTVPp1a+I4FVbltzB/942i32Ui4C+1KGKXAjW5B?=
 =?us-ascii?Q?PxZMTqjzajAb0jtV5v86qCoV2qKvWJssDyx8qgNYjROg3dJ0MQYaGPVcVvom?=
 =?us-ascii?Q?0K9NYpOvtIRRqL+mpk3/D9/CpHLCD7o4HHmRMvRbDvUo5ouXIDsES5q7N5O3?=
 =?us-ascii?Q?E4f+3aok1+RzE9pAYd2a26B++p31czt9hX5AvU06Gkm1jJOYA+seqKmmD2fd?=
 =?us-ascii?Q?olnCkGtZrJW8fd6vHN8XEOwR2Ca83K0A7JAypfrq+4Pcr9dTSzoYCwXIFU8R?=
 =?us-ascii?Q?BbfCP1j/2nUM/97qcZOO2ehhGa0Q3qnIxNGfFedni6NChZgTMqIVstRcnZp2?=
 =?us-ascii?Q?jROydK/ilNTnRAbMmhSobYB+oTmbkF4OklJXrZ1CFg2e3FjrLGAFqq9wO14r?=
 =?us-ascii?Q?e6dMVd+6UmZL8FIUSS/eHeJnEm2/kqCNv7Q/Dgr6zDHtzQ9xnEiD3OMnx/8G?=
 =?us-ascii?Q?8/lcAJ+Lo2XcAKIbWmf37G/PoC8HFA9GSalUVb3be/m+/lmGu+9l0jQW1ETp?=
 =?us-ascii?Q?e4Q7Q7Js+DOq35S/spZXelkUSRs4HgFvEuk33/6AVLXINTRkWAOzWnX2y9cB?=
 =?us-ascii?Q?HkDcjUKR5MROhFOklxLQ4rsH31o/SM6xItBlXafd9QwNtvEbqrtIThP2FoBC?=
 =?us-ascii?Q?cfqnYlpUL5MnHLHFZsTtk126h02yN7imyt/ep4k5r328GrrskncQUqFoKag1?=
 =?us-ascii?Q?6yZysTNYSi0lm88RUIk4/bhYX4rfo49nrG1QgZcoFYeCmZCZQEN/gqyKmSg2?=
 =?us-ascii?Q?evKHvTtZoeyT16MK9bphBxJSJ6jB/WGwdRWkcIwMxHefHtJpkdBuBY8y6GUI?=
 =?us-ascii?Q?MmLCyX53n+5MBPuvM+zJxJgk/XprlAvMUw/OEWarqtQ0qpCt9L++UebB9tVS?=
 =?us-ascii?Q?Di4FLwnqjlSRKCmaV5bI73dcFPLTA8lhwEXihQOm4XnorCCLWlqXs8N/lj2b?=
 =?us-ascii?Q?GMuz06GvsA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e4ec0e7-61bd-4211-593d-08de6291ee67
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 19:33:24.2295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8EI50DgzBGDXQwLOR5oPILewVM+NvUZimbcRgKacL5X4c7j/7gleHPDiKgiHfMpCZ4VQclKvntTBYUg4w8z4QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8211
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,lankhorst.se:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 65122D08DF
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
arten
> Lankhorst
> Sent: Wednesday, January 21, 2026 7:23 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Maarten Lankhorst <dev@lankhorst.se>
> Subject: [i915-rt v5 02/21] drm/i915/display: Make get_vblank_counter use
> intel_de_read_fw()
>=20
> Fixes the following lockdep splat on PREEMPT_RT:
> <3> BUG: sleeping function called from invalid context at
> kernel/locking/spinlock_rt.c:48 <3> in_atomic(): 1, irqs_disabled(): 0, n=
on_block:
> 0, pid: 1373, name: xe_module_load <3> preempt_count: 1, expected: 0 <3> =
RCU
> nest depth: 0, expected: 0 <4> 11 locks held by xe_module_load/1373:
> <4>  #0: ffff888107b691a0 (&dev->mutex){....}-{3:3}, at:
> __driver_attach+0x104/0x220 <4>  #1: ffff88813cd30280 (&dev-
> >clientlist_mutex){+.+.}-{3:3}, at: drm_client_register+0x32/0xe0 <4>  #2=
:
> ffffffff837f88f8 (registration_lock){+.+.}-{3:3}, at: register_framebuffe=
r+0x1b/0x50
> <4>  #3: ffffffff835985e0 (console_lock){+.+.}-{0:0}, at:
> fbcon_fb_registered+0x6f/0x90 <4>  #4: ffff88812589e6a0 (&helper->lock){+=
.+.}-
> {3:3}, at: __drm_fb_helper_restore_fbdev_mode_unlocked+0x7b/0x110
> <4>  #5: ffff88813cd30158 (&dev->master_mutex){+.+.}-{3:3}, at:
> drm_master_internal_acquire+0x20/0x50
> <4>  #6: ffff88812589e488 (&client->modeset_mutex){+.+.}-{3:3}, at:
> drm_client_modeset_commit_locked+0x2a/0x1b0
> <4>  #7: ffffc9000031eef0 (crtc_ww_class_acquire){+.+.}-{0:0}, at:
> drm_client_modeset_commit_atomic+0x4c/0x2b0
> <4>  #8: ffffc9000031ef18 (crtc_ww_class_mutex){+.+.}-{3:3}, at:
> drm_client_modeset_commit_atomic+0x4c/0x2b0
> <4>  #9: ffff888114f7b8b8 (&intel_dp->psr.lock){+.+.}-{3:3}, at:
> intel_psr_lock+0xc5/0xf0 [xe] <4>  #10: ffff88812a0cbbc0 (&wl->lock){+.+.=
}-{2:2},
> at: intel_dmc_wl_get+0x3c/0x140 [xe]
>=20
> This splat will happen otherwise on all tracepoints too, for similar reas=
ons.
>=20
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
> b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 1b7cfe226ff8f..a85796f9d29ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -132,7 +132,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
>  	if (!vblank->max_vblank_count)
>  		return 0;
>=20
> -	return intel_de_read(display, PIPE_FRMCOUNT_G4X(display, pipe));
> +	return intel_de_read_fw(display, PIPE_FRMCOUNT_G4X(display, pipe));

Looks good to me. However, I think it will be good to limit this to RT.
Just to contain the impact and plan a soft landing.

Regards,
Uma Shankar

>  }
>=20
>  static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc =
*crtc)
> --
> 2.51.0

