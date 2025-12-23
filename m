Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6E5CDA430
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 19:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE6B610E11D;
	Tue, 23 Dec 2025 18:22:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QqH0vhHi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5313710E11D;
 Tue, 23 Dec 2025 18:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766514148; x=1798050148;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=qHDKaHdp4LhjES8XIYbTMelQChbQS/poI1Rvu3QmPf0=;
 b=QqH0vhHihwY7LRUCrkcPLUFM89bxZ8LTPnjbG6y3j2Bm8/OxGKLWyckS
 /A8noAYxAfnfKJCrRWh7CiWMCmQEvBVU9h3OyqCG0HTZFOvM8BL856WaL
 s/Ig5ML2x9QfoxUFJmz73g/HRn5jsQzXH0hxoNZl9ZQEM/t4erRfhN1H9
 ilKrvOt533cUaYeZykdpSziDhA9zuk8hwE4kkKplXk5MDtyyZmYA8MkCX
 2nOZjSVT+TsvsUAuGNfl+kCV+EW57hL6L9N1TUcFWDVwtCKwBZMJ6YzLi
 wsfA7N82RX3W84rHur0cy/xSnY1gcnuk8HlwQSsCbid/Jp9WBrPnvO+vN A==;
X-CSE-ConnectionGUID: ILv2cmwwRj+lQHS9T6wKBg==
X-CSE-MsgGUID: LChEDlvLTim5jGB9WYrOlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="68348136"
X-IronPort-AV: E=Sophos;i="6.21,171,1763452800"; d="scan'208";a="68348136"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 10:22:28 -0800
X-CSE-ConnectionGUID: 6JoKGOO/Rl2OgCDHJcnxrA==
X-CSE-MsgGUID: 3RySaQCqT7yJ6mKLHGX7yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,171,1763452800"; d="scan'208";a="200733753"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 10:22:27 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 10:22:27 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 23 Dec 2025 10:22:27 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.26) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 10:22:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BVcJ1Jrh4wifwM2GDe92UDqlph5bonaPqXOELv9BcG/KkWqUbXur9h0DT23eqvgyPTuypvFUKme943rol24UbMtxFA493AoNGmfzANDlciVVghAM3cGWfyI6zqdYO3+Ii3AL4y/Gapu8xYmGaLWTGv4bwBt190Xu51uC8bDhbMZMl5Kc5Iw07eCfnPus3oU9hKo9wtWWH1F9cRjndpLdAgJf5/lf9uJAVDiMWP2cH2eJmhOAexxhw8mp1SizRqvnZZpxxcHOw6uV63I64lPzg3YosWkjy9tGdhwaeNQrGGgH+orux0kybcIOmkhBEUE6M2ElGQ0FC0gqdH3IqHE8NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dsW7g+zBr74TWO1G90wk31F5D8ACHV+6wiLd6ah0S5c=;
 b=tAbmD0jgwqXpMqRbOQopnc044dAziLHHo38t0jjfmjc2bjhdbTKUO7LBhv8wF37vOQo+v39G6eVOnJSJFxJ5+GMhU3+ID/ZMpipujmhIi/pTsEZqwqlWYRlfSyXw3Smr3FymNc5iF/g9cUh1YsLiD/DIzNMCYLBaX2Tf5RyjFT/svQQ0RUE0ajnZUVzwQuz+0S+ZYWCCANmeV2tYABJ6ay6vrU1jthO1EAQp0Snn7eZfgM6Nx/pHp4+YZ6VPYY7DoQsewPx5iiFe4iBgkckDo9iI2KyQPtvmvs4WN167SCaWBUGV+BvyOZHiMqj1LFTTxSzieNA5r3er00zLyDRfRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB5103.namprd11.prod.outlook.com (2603:10b6:a03:2d3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.11; Tue, 23 Dec
 2025 18:22:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9456.008; Tue, 23 Dec 2025
 18:22:25 +0000
Date: Tue, 23 Dec 2025 20:22:19 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/vdsc: Account for DSC slice overhead in
 intel_vdsc_min_cdclk()
Message-ID: <aUrd2-3rNmxSoUqa@ideak-desk>
References: <20251222044443.2443411-1-ankit.k.nautiyal@intel.com>
 <aUk_5GZQrDIDN8fK@ideak-desk>
 <7ee37384-d461-4732-ba8a-5429af979802@intel.com>
 <aUpk5nfyg-qYn2Uc@ideak-desk>
 <f12aa40d-29fe-4ba0-a2a5-1433d8bf975f@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f12aa40d-29fe-4ba0-a2a5-1433d8bf975f@intel.com>
X-ClientProxiedBy: LO4P265CA0226.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:315::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB5103:EE_
X-MS-Office365-Filtering-Correlation-Id: e95935ef-1050-4ab5-9af3-08de4250384b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?hnkkpLsETgnOyv4b7NcoIgttxfReHSNQ028a3VhutfADkoweLxys9E6dEA?=
 =?iso-8859-1?Q?q012gIb5ZRw+iW6K3+tREAtPzptfyU24fPAAyqXSGkvw+eF6jmnAlqhD87?=
 =?iso-8859-1?Q?YL0q6XkgOS5ZIF2pE6x/+5tHLPZbLMg7rsh2YAC0UCBg6OGCvKaGkk77r1?=
 =?iso-8859-1?Q?L7psufLmwf4E44tgor1eALZCo6WhsvNX3lbCFZW3ScUlNbjHOG/bItY8Un?=
 =?iso-8859-1?Q?viuZgcZzZRGUPru8gKWjym0YWI1/K/M+UGP+2xjxCQyxPlN2z/EdG/XC9W?=
 =?iso-8859-1?Q?CF152YpY0sWTEQaDkPw9wpIMA4VTomeQmZ5N3y8IC+5RXBPEnfhFbtyWnU?=
 =?iso-8859-1?Q?twWlP6H+8k0uJiMge5r4DmTKXgpab5H5qvsRsdq6mfC7dFaEGJKcVUaVy2?=
 =?iso-8859-1?Q?MMNVN4zqVTkID7xElft5O6zHuRWmBF2zrNnDyK/D1OWq6bziPotfPrQFNL?=
 =?iso-8859-1?Q?/HthM5GJHnTBkJlnRsvVRjKpDqJqrhkuNTmBg1zSS7z5TZFXK8ASGaWnCM?=
 =?iso-8859-1?Q?SQdT43C8odEKnMjtiSBgcMtk7Io27YIEG1qQLi9X6bOsnlaJ5O3WzjY1AP?=
 =?iso-8859-1?Q?KTeiE6VrdZUKfIb++srnEk2jjf3bo51Iy4aji+ZBV2Vr/yV9obsXPqiDhf?=
 =?iso-8859-1?Q?2IbNYUIfj+UTUserlS8Ej8pRjQ6rHImb/1/t8+6r1MVjlvVOReqU2g22FO?=
 =?iso-8859-1?Q?rVtqnJjJ0voML9ZY0A7Tcungpe2vIiABI4T5tawzfUTC05X+bdthadsWWF?=
 =?iso-8859-1?Q?jt5u7MmUsbrziixww0DzC/TNEbIud+BUWSEc9E8+vK3etdVDaCBrrKKxNk?=
 =?iso-8859-1?Q?N6I+zfaCS7pmbk+r/E98p4sGI54PwwIw9pkyW5fgkDtEI4rLNvJC1bB2g/?=
 =?iso-8859-1?Q?tuTHdXMmOD1BKlbxkCY7QsuyaEtotOq4c082rvHKJn272P67CrERE6lfCw?=
 =?iso-8859-1?Q?VUlGjJ0DiPHWSCFBbc+RnuwK3VG6k9ZZMs+e2WyrW7kBePxZaN8byC7nff?=
 =?iso-8859-1?Q?OcHMeXA9rVTr7oYdaONNWlx57dQPA1YbJxZJHJD8qmAFpsjJYoKBdl81UU?=
 =?iso-8859-1?Q?/5ViUQ3NoCczB8LW5jgv9YSDVvZqoBiuiIXbnuKsseRq9zgGoqNJIx02Ro?=
 =?iso-8859-1?Q?/9ksIIiGqup5LvPKWN0gTMpmcfOrceaXoCzV8KRJIUY8M/Zcfi+OA7RpM3?=
 =?iso-8859-1?Q?OcP+1QIBCwOEd4VBCYOxKLDkp2p4DLkieBIjSndXM5IOL9/fEHO3OMSuCI?=
 =?iso-8859-1?Q?OJy+Bs1hoaPHOMlJfvK/yNrV2LRq/PRXJWRB3BbOVOTLO3UFNIr4bpe8d7?=
 =?iso-8859-1?Q?lN8D5uIp6Kg0uejU2cPTDQW3PSW4XSEmd69o7ca6wE9+3YmczRT9kc1Ju0?=
 =?iso-8859-1?Q?u9l2XNIWwr69nbBUnmi48JSTUr2L9GIdiPggzSPoQRB4nRtjy3DumnQGpt?=
 =?iso-8859-1?Q?MLRgJ/p32gPjHwH5U7/yoM+j7iFxmxUpKt2fWAiVjmQlsHJUvlHsgeCOh5?=
 =?iso-8859-1?Q?Tc89LnRC/R8Gw8VtSmbIxg2YnIKNqL03zVXsEKFLXFGQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?tLY9ISiR5n/y+si3o00zfNKhHdKQWvGdPIh2cXeXjhe/69L+qrt5QvGXx0?=
 =?iso-8859-1?Q?fuZLjMzSv9Vd0bFx9K5YpFtJvaC67bx4rewijqu2ibJK+Njt3FtPvnj1Zi?=
 =?iso-8859-1?Q?fi9lREdrXGson0e0s+L2VxKdiG9DN5vyWy0fZvfLiqu6vHNJkzgQPw3vfo?=
 =?iso-8859-1?Q?+dKaIt3Qcdb22VEqpvvxPUbVtDKkYgLYwFEbre23rfQCkujCR3i+46sM4j?=
 =?iso-8859-1?Q?qUxedokIf7QiZrvEIAARip+7p4o9t/oEOGKc+VPfhQp3uEVmN1P8Mek+9O?=
 =?iso-8859-1?Q?OoOL8NjODIZLhj3EHzY9va3lk4GJDVXfiyJrlYlMihqsy+jtIpKoohwDkI?=
 =?iso-8859-1?Q?pZF27gqLh/S15nsB+OF1PadXYpwa2SveIusiGTMGtkL0BQqU2RYlVBEcFT?=
 =?iso-8859-1?Q?KRn/Zokpkc8t3RxMKvNNEvUSFILIHzWsA5JlEPgiatOIEqn2Zhq7MeuVLE?=
 =?iso-8859-1?Q?rfmLK+0H38UAuoWoUt/EkUBuSia09vRlnFPPK0jvmhBwx7wdlNolzxbbpY?=
 =?iso-8859-1?Q?jIRVZKKO+L5pxq5FCkMs0HBWwOJYCg7AUa0LbqMBEYcWqFw7Eby018cSnk?=
 =?iso-8859-1?Q?i1vZTYo9PCTch+ieH+aIZY3vbJcEtWsuhit3O2fvE+WdBLFdVfj3Igg2oZ?=
 =?iso-8859-1?Q?i9kFEEOb5mVGR3j9fJkeNsb2cTlmv+sn3tPd/Ycunhx/tFUCOaZooBXgoO?=
 =?iso-8859-1?Q?LeG2Nj/wOi5y15VYgmNljC+Y3Gv3s3eRMFZOstLRy6vsGfCoc+QCM1c2Fk?=
 =?iso-8859-1?Q?58Lai6/gsC8PZNVfzsj/K5YniSsTfXeKSfCEwasTRZiz5eFijUjP3GP9y0?=
 =?iso-8859-1?Q?T/UotffNZwS6j8RlQfPI5OnFcnHkFPtQN0N5H4hCnVawTYIMB6uzyaSK5a?=
 =?iso-8859-1?Q?YLhPyq9YTb64TICweyn0N66KtbJUC5UmYq2YtonguBZbuV3LgbkXbyWpPj?=
 =?iso-8859-1?Q?JJiRCKkJLMIMSWYL8b2ZPtR3Oh4Teg5vdVuqA0xoNN9vcw/+VY7JrYy1EQ?=
 =?iso-8859-1?Q?0v5Amr74MCaB1YGlnaiW06HXkdiaTGcQGCSRsQcL68CFdKniOPeQqCFDyU?=
 =?iso-8859-1?Q?uie7Viek+bs1TnpMmU2ZPf+5P1H2jcwHTB7ksLe5A/5o0mFXai2JyQCBgR?=
 =?iso-8859-1?Q?0E6u4lOUoegWqXFemGBwB0a9mKlnvQV1RH7tT7doen1pzZFVA/QUgTVY06?=
 =?iso-8859-1?Q?5N0iD8A1ML95RUrxTkTBK8CBodPzPjcyy9+DDwxrZgsLYHj2fDo5yU1P2y?=
 =?iso-8859-1?Q?DySfuklPeLe7dOPEmEFUctPuSySGVDp3tsdgAfegWmevZr4d7XERtwHN24?=
 =?iso-8859-1?Q?NYT1pUfp8sBfS5rfvaKpTCJ3kBSzer/Ki74tOT2ByrMsOmFIpJ62b74bhm?=
 =?iso-8859-1?Q?3WAe/j3xxmJH/hHOTBeCTSCgEHGYwT5eoJiZHBIqYiLMbbE45xIeOMSmix?=
 =?iso-8859-1?Q?Rg/A2mH8X+tqQ6MZqLzni6NoF0pZW4urapRCN+Pb2c7FgduYOns4F1jLLK?=
 =?iso-8859-1?Q?E8GJxQ1Tqx82swC/mafTeKVGkABILs44S0TC2FjMB/UT0qsyxSpHLCQbMf?=
 =?iso-8859-1?Q?W2/OW3y5Op41E5MZtFrXhbrjHNd+GaNi+CUrkE7l9r05PEuUdyjmZZTWp8?=
 =?iso-8859-1?Q?OBcjEm52YQ3VMhXsNRpzov7GNG+rYCKmd8+yruNHCTxLvQDpN+NbTxT5Ei?=
 =?iso-8859-1?Q?5qfbvFmt6X69CUlJ+wI2280QjmBd4tLh5F3anx0RLvxn07frSll6TXm6G8?=
 =?iso-8859-1?Q?9to2AhYuA4+6UrxsEREKT88jAYemKGk+135kUPqjWWaWQgt3MRc9jzSbhr?=
 =?iso-8859-1?Q?a8GbObKOROSCHlouaiRfe6Je6d0HkADfuY97z+7tVFmnSxrO2y3c3dtl3M?=
 =?iso-8859-1?Q?6F?=
X-MS-Exchange-AntiSpam-MessageData-1: /k0nx2H6dvvn8g==
X-MS-Exchange-CrossTenant-Network-Message-Id: e95935ef-1050-4ab5-9af3-08de4250384b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2025 18:22:25.0074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4dotSzo0JhmT1LCAnNqjlbxsiANh0Y3JyqLS7P7Ezy0tRxOX2xcL2uyjmKTyVIp7beJRVkDZK3UHfPSV8HY9bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5103
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 23, 2025 at 06:08:49PM +0530, Nautiyal, Ankit K wrote:
> 
> On 12/23/2025 3:16 PM, Imre Deak wrote:
> > On Tue, Dec 23, 2025 at 11:05:59AM +0530, Nautiyal, Ankit K wrote:
> > > On 12/22/2025 6:26 PM, Imre Deak wrote:
> > > > On Mon, Dec 22, 2025 at 10:14:43AM +0530, Ankit Nautiyal wrote:
> > > > > When DSC is enabled on a pipe, the pipe pixel rate input to the
> > > > > CDCLK frequency and pipe joining calculation needs an adjustment to
> > > > > account for compression overhead "bubbles" added at each horizontal
> > > > > slice boundary.
> > > > > 
> > > > > Account for this overhead while computing min cdclk required for DSC.
> > > > > 
> > > > > v2: Get rid of the scaling factor and return unchanged pixel-rate
> > > > > instead of 0.
> > > > > 
> > > > > Bspec:68912
> > > > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > > > ---
> > > > >    drivers/gpu/drm/i915/display/intel_vdsc.c | 45 +++++++++++++++++++++--
> > > > >    1 file changed, 41 insertions(+), 4 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > > > index ad5fe841e4b3..b91cd009be9d 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > > > @@ -1050,15 +1050,52 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
> > > > >    	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
> > > > >    }
> > > > > +static
> > > > > +int intel_dsc_get_pixel_rate_with_dsc_bubbles(int pixel_rate, int htotal,
> > > > > +					      int dsc_horizontal_slices)
> > > > > +{
> > > > > +	int dsc_slice_bubbles;
> > > > > +	u64 num;
> > > > > +
> > > > > +	if (!htotal)
> > > > Should this also warn as !slice_width below?
> > > Yeah can add add warn here..
> > > 
> > > > > +		return pixel_rate;
> > > > > +
> > > > > +	dsc_slice_bubbles = 14 * dsc_horizontal_slices;
> > > > > +	num = (u64)pixel_rate * (u64)(htotal + dsc_slice_bubbles);
> > > > Better to use mul_u32_u32() to avoid the casts and 64-bit x 64-bit
> > > > multiplication.
> > > Ok sure will use mul_u32_u32 to avoid casts here.
> > > 
> > > > > +
> > > > > +	return (int)DIV_ROUND_UP_ULL(num, (u64)htotal);
> > > > Both casts are ensured by the compiler already, so no need for doing
> > > > them explicitly.
> > > Got it.
> > > 
> > > > > +}
> > > > > +
> > > > > +static
> > > > > +int pixel_rate_with_dsc_bubbles(const struct intel_crtc_state *crtc_state, int pixel_rate)
> > > > > +{
> > > > > +	struct intel_display *display = to_intel_display(crtc_state);
> > > > > +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> > > > > +	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> > > > > +	int dsc_horizontal_slices;
> > > > > +
> > > > > +	if (drm_WARN_ON(display->drm, !vdsc_cfg->slice_width))
> > > > > +		return pixel_rate;
> > > > > +
> > > > > +	dsc_horizontal_slices = vdsc_cfg->pic_width / vdsc_cfg->slice_width;
> > > > The above looks to be the same as crtc_state->dsc.slice_count, aka the
> > > > slices per scanline, could you use that instead?
> > > Apparently we are not filling dsc.slice_count. We are filling
> > > dsc.slice_width and the pic_width.
> > dsc.slice_count is computed for the given encoder and dsc.slice_width is
> > computed based on that (as vdsc->pic_width / crtc_state->dsc.slice_count).
> 
> Sorry I got confused between dsc.slice_count and dsc.config.slice_count (we
> do not fill this).
> 
> I was also assuming we already got
> intel_dsc_line_slice_count(dsc.slice_config) merged, but that is still to be
> reviewed.
> 
> So yes you are right we can use dsc.slice_count, which will be later
> replaced by the intel_dsc_line_slice_count() AFAIU.

Right, I meant intel_crtc_state::dsc.slice_count, which is replaced by
intel_dsc_line_slice_count() by a follow-up patchset as you described. I
think it makes sense to merge now your patch and I can rebase then the
follow-up patchset converting this place as well to use
intel_dsc_line_slice_count() instead of
intel_crtc_state::dsc.slice_count.

> Thanks for clearing this up. I will make the suggested change.
> 
> 
> Regards,
> 
> Ankit
> 
> > 
> > > This parameter seems to be unused, perhaps can be dropped?
> > It's slice_count what is computed for a particular encoder and the rest
> > of DSC parameters are only derived from slice_count the same way for all
> > encoders.
> > 
> > > Regards,
> > > Ankit
> > > 
> > > > > +
> > > > > +	return intel_dsc_get_pixel_rate_with_dsc_bubbles(pixel_rate,
> > > > > +							 adjusted_mode->crtc_htotal,
> > > > > +							 dsc_horizontal_slices);
> > > > > +}
> > > > > +
> > > > >    int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
> > > > >    {
> > > > >    	struct intel_display *display = to_intel_display(crtc_state);
> > > > >    	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
> > > > > +	int pixel_rate;
> > > > >    	int min_cdclk;
> > > > >    	if (!crtc_state->dsc.compression_enable)
> > > > >    		return 0;
> > > > > +	pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, crtc_state->pixel_rate);
> > > > > +
> > > > >    	/*
> > > > >    	 * When we decide to use only one VDSC engine, since
> > > > >    	 * each VDSC operates with 1 ppc throughput, pixel clock
> > > > > @@ -1066,7 +1103,7 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
> > > > >    	 * If there 2 VDSC engines, then pixel clock can't be higher than
> > > > >    	 * VDSC clock(cdclk) * 2 and so on.
> > > > >    	 */
> > > > > -	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
> > > > > +	min_cdclk = DIV_ROUND_UP(pixel_rate, num_vdsc_instances);
> > > > >    	if (crtc_state->joiner_pipes) {
> > > > >    		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
> > > > > @@ -1084,9 +1121,9 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
> > > > >    		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
> > > > >    		 */
> > > > >    		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
> > > > > -		int min_cdclk_bj =
> > > > > -			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
> > > > > -			 pixel_clock) / (2 * bigjoiner_interface_bits);
> > > > > +		int adjusted_pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, pixel_clock);
> > > > > +		int min_cdclk_bj = (fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
> > > > > +				   adjusted_pixel_rate) / (2 * bigjoiner_interface_bits);
> > > > >    		min_cdclk = max(min_cdclk, min_cdclk_bj);
> > > > >    	}
> > > > > -- 
> > > > > 2.45.2
> > > > > 
