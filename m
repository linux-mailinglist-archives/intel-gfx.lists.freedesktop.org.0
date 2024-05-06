Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BC28BC86D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 09:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 523A510F4BA;
	Mon,  6 May 2024 07:35:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lEblVI30";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E1710F4BA
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 07:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714980905; x=1746516905;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YVdrYVgHSILJrZZ1gYin8kOK2plv2LK4K5XEaBGB45c=;
 b=lEblVI30xC0pjlnHpoRspSLA15yCA0BZqszyzRtXNaOVBVRTQmkCTvva
 K+suM8angAyK4QnkCC1c93P5E5KwxRGzTdrrtnLzdc8dlGL9mYCV43ezY
 qFUGgr9Ww7R8TUnukAkkbyrjDduVGTINYiXKK58a54jGobje+iPbaU0mS
 I30e2tnhJSsWk3kKm6BpNAa2o4BtK6/ioSxY4w1v6w8q1LkKDjyakYvTH
 Q4BsIcOeDN5zANdk71lBq12w1mou6Ck6NJV/DlTaJwHTY9zXpfizCMV3I
 vHIHpiy8S4IQk6sWwrszpCzd69LCuYpBEPFRlZ1SkocWC9xGks5ev9mdo Q==;
X-CSE-ConnectionGUID: TnPLjgddQrqbDF/I6ziCTQ==
X-CSE-MsgGUID: F77mukLORpSgQ42bCzRjCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14519996"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="14519996"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 00:34:58 -0700
X-CSE-ConnectionGUID: d/zpo3CvTvuh18Jvr7lbeA==
X-CSE-MsgGUID: 3nY829RBQDyQ96hgwgB8tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28191944"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 00:34:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 00:34:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 00:34:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 00:34:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCCCnaBB1yGFzop1uahm5sjm4yqMCMdI9l44dQx7kVw8Ux5wDs+ZtC0iJJ721Np689nsUiLlJGsTsxLacpkkp11HxSca7vhgFFJQxfvkHoyVfdSlYNewurUn6VgdTPo4T8zR0FDxGv3FlLi94mH3pt8OM6+AItbLGi/e/l6AzMu9JO8exy/Wk3SwbD1aaaCUM+t8CJUPCsAOgTe/yGQH20XyEBX5AC5I+mbayhsXT8cfKUuej5a/X439gGf7a+yD6f5lPMF0Ia616bVRoO175BzItoKjk0n2Rw5vnmZlAQPREK31zXDLZOGAqOzbIUfU0UZ98kdIrkylVN3hck0Zcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YVdrYVgHSILJrZZ1gYin8kOK2plv2LK4K5XEaBGB45c=;
 b=oaGGluYWEUnN9os+PUUEzvEYU/0IetNhJ90r2dhFJNW7ZcLk4c/6BhSqlnNJLJpQsk+fNVMFSEHOBXt57TBwi8JIJ+V8VXsBH7LAoFQuwe7wksz0qUfM5itrlQ5hhTgBjsHZ+ukJ/x4vPJder7V3R5l/BSE+d7JFwitkn9Lq04iAjaJTH+P0glNx+RxpX/nb+IWpN0ez4YvYpEGMVQeXH0Hr5eVvkgLQbBy9JMF+07Y5D/CCYb4+4krsHRCTnT5SUTKRGKPZ/QMk8e42fNovITmuE8txf0DysVa9j94/7+j5aKsVB39mtI1ojiUOBiP+4x5ulPjMc7G4B0AMgMX62Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB8068.namprd11.prod.outlook.com (2603:10b6:806:2e9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.39; Mon, 6 May
 2024 07:34:55 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 07:34:55 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 17/19] drm/i915: pass dev_priv explicitly to ALPM_CTL2
Thread-Topic: [PATCH 17/19] drm/i915: pass dev_priv explicitly to ALPM_CTL2
Thread-Index: AQHamubOLWHbNW4f+0a2ZwQgkq+PbbGBp+oAgAIcsgCABhVcAA==
Date: Mon, 6 May 2024 07:34:55 +0000
Message-ID: <b25a29ac1fc9761f336e8b3793fae037c9f8388f.camel@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <09acf2751cfd2f524e6ba97c3ac285495eae5c86.1714471597.git.jani.nikula@intel.com>
 <ZjGoJC6I5W9HQw4R@intel.com> <874jbgpkcp.fsf@intel.com>
In-Reply-To: <874jbgpkcp.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB8068:EE_
x-ms-office365-filtering-correlation-id: 1cc13df0-37fa-4888-0cec-08dc6d9f065d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bGNUVDNFaHdIczBzQ2RndVdGUko1ZVZlOXhDMENDZE5LcVRyR09jZmpWMHI0?=
 =?utf-8?B?MEN5WVdSWGlMNm9vR0t4Tk00QitSNGFKQkVkZHNTTkxiM3RDT3h3YThMZFFT?=
 =?utf-8?B?VGlRTEN2YVVHYksxbnBjK080WW1LMVJqNnFIT2FOQ1I5MStQem13NW1VakdP?=
 =?utf-8?B?TlkyV2l0bGwzSXFBc2hTZUhwalZsR25KOHNCNHZxcHkrWFJ0MzJUaXV6SWUr?=
 =?utf-8?B?aDV5T2JSeTI2d1prZVY1MlJKOGd5RlhaRVgrNUg3WWF3d3lvdlZKeUN4YlVx?=
 =?utf-8?B?OWF5WDdyWU9iNXZlbG04cGk0eFVCVFNEMWJtQ2g5b3FoVUx0bFZPeHpXWmQ3?=
 =?utf-8?B?OEVuaTh5VkdTWmswcHA4ZW80VEtGaWw4RWRwNGFzTzVrMUlIa2dwaTdmZG5X?=
 =?utf-8?B?VVBXLzEwaVo5YWt0d0o2Z2RVZlR2Q3FJZUttUDRPSFl6SjdxNkx3YTlzd01J?=
 =?utf-8?B?cVFZNW5mamxJZVhDWktqWW14cklKYkJwalhvOXdQWlkrZWFvWDRVS3lPcCtx?=
 =?utf-8?B?bjBFQ3ZHaDhROWdpR09tNzlPaTAwNVo4cmplUkd2OGh1SktRUXVLb01QOCsz?=
 =?utf-8?B?Rks5N1h5aExJWnl6TGU5SndJVC9UNDJ3QU1uYW9aUElER3d6TlU5MXI4bGVC?=
 =?utf-8?B?bGhJTnh5TmlUdUtmdE53bS9BUnlFbzNQZXAvcytxZk10SmlxKytZZEttYW02?=
 =?utf-8?B?TlNFY3grSDUvRHorcndOa1BMaDUxU2NZWmVORnc1a2hCVGxqQVl1ei9TMGNx?=
 =?utf-8?B?Q2p0YUtRS2FTQUc2YitKR2hsNDFqd0RFdlZQTmJEK0VGMnJLV3RQZGkweC9B?=
 =?utf-8?B?cE4wY204aDloVHVBU29ocmFzbnNzbXZaN1VYL3gyMC9wRUliMkdTQWJlQXZI?=
 =?utf-8?B?aHMzV0tWdHlTYXllaDBYeFA5dis5UU51Wmx6Y0ZMckNwaVRNSzVGb0xTZ3RE?=
 =?utf-8?B?UGFsOCtmT1hLbTI2NElJcnBkWkI1bmExT2pNL3NPOTRLMUZFakRPSnB4dHpx?=
 =?utf-8?B?YWJEb2h2SmJ6ZkI2UkdObldrWXJzbVJITEtmMy9rTkJwV1RJSUFHNUFtSUNy?=
 =?utf-8?B?TUxOc2lEU0Y1Q2tpcGRLd3BUckpwYTgzM0d4d1Vnb0RaWldaWlI5MGx0VUlQ?=
 =?utf-8?B?T3VsSmNTUWpnaXI0UFdCR3ZUYUZZOGI0cDM5ZThGL0VjcmJzSEVOSTk0ZjhG?=
 =?utf-8?B?ME9xR3dTUjVENElVekd1Tk1DS0RxQkl2RktHVkdPMkNGTmlaTS9BTmlzSFNo?=
 =?utf-8?B?di9wMFRxU05mYmtJV01Na1R5M2JRMGVnZGYyR2xWZkN1Rk5OR3Y1b0tDN1Er?=
 =?utf-8?B?cmN0ZENpbVJBR0U2bjd6OUNEZkhZSGU0ZmNkMEIxcGV4ZTdsanltRUFzNWVx?=
 =?utf-8?B?U3lHMnJOaDlsY3Zhd0ZxRlRjV21FMzVGanIyMDdFTXJVMGFwbkxBWGp5TU15?=
 =?utf-8?B?ekxKVzZ5RVI1YTYzU05wZGQzZWdocURzdkI1SFR6L1RvSUJTZzQ0ZWdISXBE?=
 =?utf-8?B?d21sMkdhVS9mdGRjZnBBN0VUdENSQ3Vyc0dETHJlQUhES2t1b1Zrdzh5b21P?=
 =?utf-8?B?VTRVb1ZjY3QvMyt4UFdqUnpwVSsvanNXVzJiNEdxWVpKYW8vZkErNlp4bk9q?=
 =?utf-8?B?cUViRHVjRFYrMlFoUjRsdGhUa0lUTXdtZnBMcWhVZGZMMExQWUEvajhwM2Nx?=
 =?utf-8?B?QXFuSUVZS2ZmdnQvQzRBNEwvZ1grNzVYK2ZhTFkrZHVWWTcvU2JVKzc2Z1B0?=
 =?utf-8?B?c2FTUThzLzZ3UThpczdoaEYzSkJYaENFNTJScUZiYlpYVDA5eGx4cDdRZHNs?=
 =?utf-8?B?ZXpUTlp2b0M2N2pMdVMyUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1JnZkFZT21xb3A3Wld2NmxBaFVEK3JDcGNvTUUrdVU5a3RGQTVhTjkxbVR6?=
 =?utf-8?B?bkEvYXN4b0w2eHYwTGNVWDlrUzc2R3UrRitwemFsRmtmTlJkTVlPakVQenNo?=
 =?utf-8?B?K09ZTEFDWEYyamdFWEx1REsveXVheEIzUXh1ZWxrM3BoUDFYRnowTWZWMngz?=
 =?utf-8?B?Tm0xNHRkZjloc2psejQ3OUp5QzNaVmJUclp0WEdqZFNuUmtPNEJicGkySys0?=
 =?utf-8?B?MUZ6aVVhWiswMVpVWUdWaTR4ODN6dmY1UmJCMXdmeWYxSEJjelJ5RUJNN0Fx?=
 =?utf-8?B?Nk4xREFQcmsxTDdmdWFMSnZzaFA4ckZkVUJCeldWYndwb1pHTUU3Nlh5Q2FW?=
 =?utf-8?B?UFFDOXA2MmQxVFZ2SW1IYU5mazV3aUNaWHhVOG1hVjBKNkVicEIySDBZRUNM?=
 =?utf-8?B?cERmUi8rNGhWZTB3TVBmZENKR09TNlpIM09PV0szbythTkswS05TQ3ZibGxK?=
 =?utf-8?B?S3lnTHdzWWQ2eFBmd3BmbGJHSi9ZbEtoSlhVNVo1azJReDdhaUxWRkFMNXhK?=
 =?utf-8?B?ZlJaM3B0RmZaTjFWOFpIK0FqWkkwb1BUVlNGeHJnelIzNmY2cEdyL0xaakNn?=
 =?utf-8?B?cjREbmszWml6TFRXMmZUOHowU3dZbGFMV1h0Vy81c2ZzeUcxb3lZYkFtR1A1?=
 =?utf-8?B?MkY0UkdNcGNITzZsbHd0UHVHd2xEd3pXVG91WUNaMGFoZzhCak9SaGJJWmcw?=
 =?utf-8?B?dUpod0ZFUWFDTUJFeWZ4M1BaVUxvSFhsNFN5YTZkUFYxb1B0ZVlSZEZ6Z3RV?=
 =?utf-8?B?dVp4TFEvQ0VpbmpiZEZDN1ptU2pvZUdMVzVhYk54QWRVZkFzRW9pR3JFSXAr?=
 =?utf-8?B?eW9BUFJrV2RjVXN6cmtRUm8zMXUxZUhoeGU1d2ZkL3p2M2g2enVZU09QQzhJ?=
 =?utf-8?B?d091MFRzejdPOCs3QXZTRXF4U0J4d2hob1JZU2lLalM0VWovN2hqL2U1dHVQ?=
 =?utf-8?B?S2c4UXpRNHY4YjNqdmVueWg4cythNVBaYlNyVkc0YlFiVDE2dVlOT2ZIZTJH?=
 =?utf-8?B?L2lHSS9QZTlHM1lGcGVzQWdTN01GWnErZVQ5eTFPcjJZVlZyN2tQVzhaNkhN?=
 =?utf-8?B?c0pDdnhSQmhWL0FqL2Z5ZnRSQ3ZkWGNHUzZ0VXNzdFB6U1BGVERIQy9iajNp?=
 =?utf-8?B?NGJldksyWkZKZXQwdmRSSUJQZTQ1VStma3YvVEhzTnNxRGpRQXdDYUU0QzQ0?=
 =?utf-8?B?Uldjd0c4Q01WdklpaVFvaEdvTjh1VUlmR0laWUhucEtOSDJMSVFadkhQUEx3?=
 =?utf-8?B?em1oSGdmdEZMRjFwbXh4a1RNN3pEV0dnNlg0Rk1nb3RMUmlzU09GZzk3Ni9Y?=
 =?utf-8?B?OG1tQzdQS2FRVmQ2c0h6MlRCaERvb3hOM2FnS2FGOGNFTjhrbnZndnFOT29P?=
 =?utf-8?B?ZytmU29xVXVPdmZpRFRua3gzVmlWeDBIY1p3VlpkMDZZZlo0SnFJVFZqK0JR?=
 =?utf-8?B?MFlnRXpYYzlwb2hkdTBITGlXQWxTUXcyL1JVNnRnTUZPd0V4L3VVODU3aWlF?=
 =?utf-8?B?MzgxWkRkYmZGckJZVVVpL0lRN2tXdGQ3WWg3NEVMN1E5b1lValBUb0ovdzZh?=
 =?utf-8?B?dmJpL0d2MFNNTFNLc0JhNlJzcWlXSzhUS0tySFJoT3VFRTZ2bFpGd2tJUHdO?=
 =?utf-8?B?eXhldVkxWEJGY0hUR2RqQWhDMTdPSzdSVEVjL3AxN1FaS0FMOXZ6Qnh2cTl2?=
 =?utf-8?B?WThiUElnZjVWK01RS0c5MlBGVWp2emwxVVlNMFpVYlNnRTZ1MnZPRUJWazFE?=
 =?utf-8?B?bGJrY2VGU085TTE3WnY0N1djK1ZWdXBqa0xvU09jaWpjcHVXK0x6L3JYaDVs?=
 =?utf-8?B?ekVMZWRGbkJOV3VHcEdNZEVtWEtxaHZwZ1gvWnFRaWFtd1hTUDVrdTI1RVpu?=
 =?utf-8?B?SE1yb2RPenFvTlFtampaRXQ1S3hYTzJuUzhybG5iSEFob2M3bm9zVDhIZENW?=
 =?utf-8?B?TWVjWnh6K3ZCWG5MeUhRb3JOWGM0U3hLbW5mSnk3U0Qydzg5TFE2Q1hmL05u?=
 =?utf-8?B?WWx6RTJhQk13SWl1bVNFdU4xQi9HRzZJR3VYZXpRQlBMNit0bUd2SXlxSVdj?=
 =?utf-8?B?bXRoTDhDbHo4bncrRTMxSzJZWnpLQmlleHdrYW11WC9Ib3hpR1RJSGwvU0M0?=
 =?utf-8?B?KzRkc2x5cWk0MGR4ckJ2TFBscTNua09ZR1cyNTZiTzlWZ3FucnFiOThhVGg2?=
 =?utf-8?B?VGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B66FDEE3D291E444B31C25B771FB8786@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cc13df0-37fa-4888-0cec-08dc6d9f065d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2024 07:34:55.3159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ia72+1pDLHYqn13WNeOEaqvdTOk5rnoeYVpIMO2GKlIpfTCRoNBnxDhSgUmzOywb6KUXQ8vUHukWqLr0066G6TmV0/0UKchCaPtjkECEfIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8068
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

T24gVGh1LCAyMDI0LTA1LTAyIGF0IDEzOjQwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAzMCBBcHIgMjAyNCwgUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PiB3cm90ZToNCj4gPiBPbiBUdWUsIEFwciAzMCwgMjAyNCBhdCAwMToxMDoxMVBNICswMzAwLCBK
YW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+IEF2b2lkIHRoZSBpbXBsaWNpdCBkZXZfcHJpdiBsb2Nh
bCB2YXJpYWJsZSB1c2UsIGFuZCBwYXNzIGRldl9wcml2DQo+ID4gPiBleHBsaWNpdGx5IHRvIHRo
ZSBBTFBNX0NUTDIgcmVnaXN0ZXIgbWFjcm8uDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3JfcmVncy5oIHwgMiArLQ0KPiA+
ID4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+
IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyX3JlZ3MuaA0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
cl9yZWdzLmgNCj4gPiA+IGluZGV4IDRkOTUwYjIyZDRmMS4uMDVkYzFjMWQ0YWMyIDEwMDY0NA0K
PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3JfcmVncy5o
DQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdz
LmgNCj4gPiA+IEBAIC0zMjEsNyArMzIxLDcgQEANCj4gPiA+IMKgI2RlZmluZcKgDQo+ID4gPiBB
TFBNX0NUTF9BVVhfTEVTU19XQUtFX1RJTUUodmFsKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBSRUdfRklFTERfUFJFUChBTFBNDQo+ID4gPiBfQ1RMX0FVWF9MRVNTX1dBS0VfVElNRV9NQVNL
LCB2YWwpDQo+ID4gPiDCoA0KPiA+ID4gwqAjZGVmaW5lIF9BTFBNX0NUTDJfQcKgwqDCoDB4NjA5
NTQNCj4gPiA+IC0jZGVmaW5lIEFMUE1fQ1RMMih0cmFuKcKgwqDCoMKgwqDCoMKgwqBfTU1JT19U
UkFOUzIoZGV2X3ByaXYsIHRyYW4sDQo+ID4gPiBfQUxQTV9DVEwyX0EpDQo+ID4gPiArI2RlZmlu
ZSBBTFBNX0NUTDIoZGV2X3ByaXYsIHRyYW4pwqDCoMKgwqDCoMKgX01NSU9fVFJBTlMyKGRldl9w
cml2LA0KPiA+ID4gdHJhbiwgX0FMUE1fQ1RMMl9BKQ0KPiA+IA0KPiA+IG5vIHVzYWdlPyBzaG91
bGQgd2UganVzdCBkZWxldGUgaXQ/DQo+IA0KPiBJIGJlbGlldmUgYSByZWNlbnQgYWRkaXRpb24g
dG8gZW5hYmxlIEFMUE0uIEpvdW5pPw0KDQpJIGFkZGVkIGl0IHRvZ2V0aGVyIHdpdGggb3RoZXIg
QUxQTSByZWdpc3RlcnMuIEN1cnJlbnRseSB0aGVyZSBpcyBvbmx5DQpvbmUgZmllbGQgZm9yIEx1
bmFyTGFrZSBhbmQgd2UgYXJlIG5vdCBjaGFuZ2luZyBpdCBmcm9tIHRoZSBkZWZhdWx0LiBJDQp3
b3VsZCBzdGlsbCBrZWVwIGl0Lg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCg0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiA+IA0K
PiA+ID4gwqAjZGVmaW5lwqANCj4gPiA+IEFMUE1fQ1RMMl9TV0lUQ0hfVE9fQUNUSVZFX0xBVEVO
Q1lfTUFTS8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19HRU5NQVNLDQo+ID4gPiAo
MjgsIDI0KQ0KPiA+ID4gwqAjZGVmaW5lwqANCj4gPiA+IEFMUE1fQ1RMMl9TV0lUQ0hfVE9fQUNU
SVZFX0xBVEVOQ1kodmFsKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19GSUVMRF9Q
DQo+ID4gPiBSRVAoQUxQTV9DVEwyX1NXSVRDSF9UT19BQ1RJVkVfTEFURU5DWV9NQVNLLCB2YWwp
DQo+ID4gPiDCoCNkZWZpbmXCoA0KPiA+ID4gQUxQTV9DVEwyX0FVWF9MRVNTX1dBS0VfVElNRV9F
WFRFTlNJT05fTUFTS8KgwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfR0VOTUFTSw0KPiA+ID4gKDE5
LCAxNikNCj4gPiA+IC0tIA0KPiA+ID4gMi4zOS4yDQo+ID4gPiANCj4gDQoNCg==
