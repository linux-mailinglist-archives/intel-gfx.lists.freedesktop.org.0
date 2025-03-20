Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B2AA6A3E4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 11:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B57E10E5C9;
	Thu, 20 Mar 2025 10:43:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MNillnuQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D6310E5C9;
 Thu, 20 Mar 2025 10:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742467391; x=1774003391;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kswbZq1PBhXp4EYPfX5iC055z1qYR/Go8GGCICuX/Gc=;
 b=MNillnuQIZsszStpukAhz6OyQN9GBiZMGc9EDukUPWdVn6B6gdKOlSLB
 Y32J3h0rnkqQvXKJYFcCn6Nkh2Z9RNVSWmv6aCaa2m1JBvKIKfYXo3UO8
 0Pd0cQ5DSAEKXeaf/khNjaZpqQKuZ1QLMzGHgKE0qhVDv3gQT9DfTdsKL
 kN/JMT2Ko/XKGKDmgWKq3botdL0qfI+l2y7noZYx6R+vm3PftPlulqLCp
 gL29PMZT3nVaFqxGuPy0OQZLOzUck2bQ3NwcIHzQ/61QneUbncRmC2WtG
 Q0tlB+yekmZ0YvjyIh0PUuvJ+IulwqeLpyZlCPC/GzXnvyw+WxL6h8gxh w==;
X-CSE-ConnectionGUID: oDxco8GPSB2vpUsTnzHoeg==
X-CSE-MsgGUID: 0jekUZrJSC2SYIu6d1KnNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="53905549"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="53905549"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 03:43:05 -0700
X-CSE-ConnectionGUID: 2bRkD20ATNKsD2x77anPUg==
X-CSE-MsgGUID: 5QcRIX8jTIaUhBm23jzfyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="123994158"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2025 03:43:04 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Mar 2025 03:43:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 20 Mar 2025 03:43:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Mar 2025 03:43:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FSrqq4MnoAoc7bS7W/q0qI8ZZlMoRhD1+UQKDTmxg0GGMVWxLX6NJWPfu11AiszzPDvvySUr38Tyv1MH/CU9lYV7Mec5HuyRjWC9aW8sNR0ITcUZ7hJUrdqNqxVPyw5eT30O3Rz+80qpoMCEM+aS2cTCobNeStLn8laUC7lXV/mqoIUApUJ8wqXwWxhtbpBwVKW/2J4JMXp+GXLFTPqneci705ARn58PCF2enlVsMdz5rMywAMCYl0M9K9OpUblKG9M2lUxNpJgaejVoEo+rBNbDS27fl27kQ+0whEnXnBGnPs7QGNikOOH9WXZKpxn7ZqTsPxn11UYo7Bmo5uKt2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kswbZq1PBhXp4EYPfX5iC055z1qYR/Go8GGCICuX/Gc=;
 b=x0q6GylA41xlf+2gH9At1PB89+TDTQybFZbPUPHs2xt98u049M/A+U3uI+qzQN89oEJzt6izfcfhFSUS506PFgnABaSD2L2GjRgKXUFAjMlWn6FCUOejC8x0eHayWTnEGrh3dXZT1VPGC+dD56Q5U732RWMGXKfACPkVNtyw3YiNSy8ek9dpnRuHZ8naCAj3M1gxzg6p9cElOMpDbfp/1f50xjAaTpgmdbQD/seQI8olchcRtP25mdRC2Jwo9FLGUsJq8Ijy5DEcGfr3NRqdWyPWFg6S1KLq07pkHvD+d0Q2T7LEabiGQSqsEtykJBIrLwyOGsrwkWnIqNha1ez07g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB5278.namprd11.prod.outlook.com (2603:10b6:5:389::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.36; Thu, 20 Mar
 2025 10:42:19 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 10:42:19 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>, "B,
 Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v2 2/2] drm/i915/fbc: remove panel_replay dependency from
 fbc wa checks
Thread-Topic: [PATCH v2 2/2] drm/i915/fbc: remove panel_replay dependency from
 fbc wa checks
Thread-Index: AQHbmNYbmp+9pGyj90udLcPmpQh6nrN7z3uAgAAIWIA=
Date: Thu, 20 Mar 2025 10:42:19 +0000
Message-ID: <770f953caae3f6275782d30cf26c57ce557f1e8e.camel@intel.com>
References: <20250319135130.122703-1-vinod.govindapillai@intel.com>
 <20250319135130.122703-3-vinod.govindapillai@intel.com>
 <9db3c1ce3b61447085248c9dd444dde49a44cfef.camel@intel.com>
In-Reply-To: <9db3c1ce3b61447085248c9dd444dde49a44cfef.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB5278:EE_
x-ms-office365-filtering-correlation-id: 08943a28-cad6-4e68-fd80-08dd679be3c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bXhVdUZ3d3h5RUtrODBWbldhQ3dXWG9QaGo1Rk1uRjBvd1RvUVhWamdRYWMy?=
 =?utf-8?B?aHlIYlVDUGR1U3hCU0x4djJ4ZkhFaFlKZW00UndGWjQyak9qcngyTUQ0UlNR?=
 =?utf-8?B?dHJZRjlYcTgzWEV0MHVLYmdFalJ1cDAvMHFwMDJiR1hVS201cW11RmdhbGZV?=
 =?utf-8?B?UjNJamVPR3pFTWFpUFlPcUF4SkFQdmpLTmpGbmxNZTdCb3dYZjRoVG1oOE5J?=
 =?utf-8?B?RjFwclNCZUd6b2o1dHhCVVhPc3dtZG5jRjhVUlh5bEdKd25zdmFtRU5VTURu?=
 =?utf-8?B?dkM0TzFoM1VHRTZBTytuUWR6azltaXlGRVdzV1BkSXRvYmttampQMU9QSG5s?=
 =?utf-8?B?OW5rYXAxbVQ0QjRDVmZZRFQydVFUTlNQRDhReWNWZ3RRcGhpMU9xNmRHb0Z0?=
 =?utf-8?B?eEliY1liVTZMcjlGTUphc0VlN0JpOHlHQ1h2NnFNR3lSeHNpN2hjWjBOMG1U?=
 =?utf-8?B?SVVheWJLeGNzaWkvZVRkcmpOUFE3cWEvZ052dmNPRE5EWjBCTnNKbVVVUWRz?=
 =?utf-8?B?UWhiMlpzWWgwZ2xhb2FjK3hZOXdUdk5hOEFzbmZwUWFqZVhXQ0tsWUIzWkpS?=
 =?utf-8?B?d3U0dmtEejZUSnE3a1VFdStWRzBKSTFNeEYzdjZNNS9xcjZWMGtFUXRjOXF6?=
 =?utf-8?B?OFhzR05OaG1rMnQ2Uysxckx2YzFTb0ZHdUFZVW1YamFDVGgrb3ZVTEcyL21D?=
 =?utf-8?B?ZFo5NnhYYzBwQ1BSaFR3N1Rzb29rTlpiR1JtaFlPSHhSZ3NMMWlFdkhUMUxQ?=
 =?utf-8?B?Z3p2V1JCZmtodmVZL2MrNDI4cG90dnpLa1VqaHpZWTd5aTVJcGhwN3pOUEYy?=
 =?utf-8?B?QXpSTmtFczNGbGoxTDBTL2VCd28yRm5aTldESEpSM3cwNnM1V2VSOGV3MmZl?=
 =?utf-8?B?ZWt1U0ptOXBxQnFjWDdSeXNYWGtycGlsc2U0NXpaYWJnTGdHZHBRZStqYUFj?=
 =?utf-8?B?VzB1empvR0NoellXb3pPVUVBRmtQRGpaNW10MkszajZRaGE1QkpiSjkrTGlz?=
 =?utf-8?B?dkcvdkpkYXZ5NjFVQWdteGtxOHRyZDROQUlDWDFPZXV3UGlSVzUxTE1tL1VU?=
 =?utf-8?B?LzM0WlcyejljZUZwU1RGRmZManR3aTVYUzFaUE1hd0pRbTZmVFJuN3p1eGN0?=
 =?utf-8?B?RVBXR3lqdHlsYVRsV2FhaXBXcGdBWFMyU1l2TkdtY0c5b3hteTFQZzBFenFB?=
 =?utf-8?B?NlM0MGpsZFJSTHBzNUdLUlp4Q2FVZW5KM2FXQmhQMnV2ajVyMnZXZk5PWmRr?=
 =?utf-8?B?QVRxdjFmeGkwU0dTREU4eGEyU0xpWlRMZGRkTThXRTFLRVB4L1daNTl0QmI2?=
 =?utf-8?B?a2ZESzFRWUM0Z1NBY1Jqa1JnV3BueGZobjZEcGs3TnVHTjJCZytjT3lpZ05t?=
 =?utf-8?B?T1BPL0dqbmR5Z0tIeVhOT2pEd3Z1d1p5R0pvVmNqaEUyTkpkVXhmSkF0cktn?=
 =?utf-8?B?ZjlVWTBtRlRBc0VBRXFYVHhsZzFHN21LUXE1S0xRa01JdjVjcWdsNFBBYmo5?=
 =?utf-8?B?ajRxQkRxMlQ0V1lNeGU1V0F5a3hZQ1VGQ2t4bkJRWW1rWEJQbkVqVmtLZlpU?=
 =?utf-8?B?VFp1ckVoZVJJWWdjekxLM2taSmZVcFNKbzZrRGdKWGcyZC8xYWtQa2pzMVRX?=
 =?utf-8?B?WER5QWVuZ3dOMVJ6SGQySVdudnZqd0Q5d3Foem1XTnpBWVVEUXNyTEJEY3k5?=
 =?utf-8?B?QUF1MTZCSm9TZEs1SzBBMlZpTmVpUlF0OFlRREp1cDhmQkU3STE3Y0QxaEpJ?=
 =?utf-8?B?c2dkdUFmcXlKTC93S1RnbThzZUFpbU0rOGtFZW8vMXZHcHRPNldicnRickxJ?=
 =?utf-8?B?OGErMHg2WVJXY09nbkJTUThCUEVmWlJ4TnJFYnZTQ2dpcUFoeWVCKytTYVhS?=
 =?utf-8?B?NXFiL3FlWXpQZjQzMnRpaXBSQ3B4Y3hDUTZhcHkyZG1pVUorUVZXSGlNa2V2?=
 =?utf-8?Q?4jfIGQ8BOtpB+5JmN0DWa46Lx6PwaWU3?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RW03eVNGQkxsdHE0RWp5M2xFTFVBM0xBVHFUNEd0VjJQUFdDNXd3TnhFU3Vp?=
 =?utf-8?B?UEFlWjh4b3YrVFRBaTVnYUoyT0pBTVFpdkgySzBGS3lnQ1orTzFyRkdDbjRW?=
 =?utf-8?B?MndPQUsxZTBON0xkcUo5dHl2cFZaOFhpdkZrS29aa1BkOGZXZkxMTmpMMjlD?=
 =?utf-8?B?Ty9oRGNIcVU3emlqZGZOUlBJQWRmdzRYblRINlhWZWpCV3dENnE4S3BEMmx3?=
 =?utf-8?B?bFUvNHcwZWJMcDZzMTlMTWlyNVRFS2lrWDk4akxxS1ZlL2RwNFAyMkw0YjJW?=
 =?utf-8?B?Mjl1a2ZLTXdwZkVLUVNWNWNZbGhjd1RQZjYwcXlYVll6aWptcExwaEVaR2RF?=
 =?utf-8?B?MmpRNDdFQ3dBQ1R3LzdhWUQyMXFIT0tYdFpxODFtMXltNHZkOURpYS9oOTBE?=
 =?utf-8?B?YkVEVjJXWWQ2K2tjY3lsUWNoSStRb2psSVd6SURaRWphb1NWb2duSkZ3WUJw?=
 =?utf-8?B?aStTR211bTJpRWlZZExSajBsTS9FbjM5MUNZMWhNNjlmSDJBeXlpOWNlVHZa?=
 =?utf-8?B?TFVpYUlRZURnU2pobkFtejRJYldpc2lWb0hhN05uckMxTTMreVBuNjhaYW1V?=
 =?utf-8?B?VUp6QXJKcjZxTzJFM09mdlZnb25obHVXQmQ1OW5oRk5hRzBtZ01xcmlSVU5Q?=
 =?utf-8?B?Q3JEYi9keXJ5UXN4c1BqOHJMQmdPNUtZN2VxcHBTOThJelBVNmdHQW1tckFH?=
 =?utf-8?B?aFVvYkkzREg5VEZhME56RFRYQWpmUGpYUjZPVGtPUmhCY0RjT1VPckY1MlJU?=
 =?utf-8?B?RFF2ZU4wdFlrVnNFemVyYUtYVkNzdDlLOCtuYnVjVDdMaTFMUVdzc3hCR2xh?=
 =?utf-8?B?a2s3Qk5PYy9FTHpWWFBtWUVrZUZwM1E0d2tha1IrQVlmV2hBVFpLelhKOXli?=
 =?utf-8?B?WjBHa3dBN3poL0FZWGluV3N2UEdGMjB5SVdsVWM2SnlWb3F0QkdlaUVFN3I1?=
 =?utf-8?B?bXArb0V3OHl3bGYvem5HSHdqczBhMWZYbEk0VFZLYlhrLzRpN3hoZEsyL0s0?=
 =?utf-8?B?VHdFN1dTTUpZMWMyZURZS1ZSYjN3Mkl6MFBlNGloYlJiblFNZzFaZHlmV0o1?=
 =?utf-8?B?TCtBLzdMbFhhNGRhakNSbzhEWmZEbDdzTkZiOGRzUEZicUFZU29xMkVIeWQ2?=
 =?utf-8?B?ZERmNUJBR2hrakd4NzRxbHdhMkROUzU3ZS9YRGFPNEZ3Q3pUNlBDK3FGamZk?=
 =?utf-8?B?MFRKajhoR1E2aDNQN0l4T2RjYUpzK2h0a2Z4S0FBcGYxV2dsczFkVk5RRWtv?=
 =?utf-8?B?aDhiUkNZTUtYTGdSaHlCMGtOcHl4b1crekNjNUNJNWhJalpEWHJtMFB6R2R1?=
 =?utf-8?B?U1FyVE5tc1lLSHBZbDUwcXNoVzBRaHljVTY0bTZLRjVUcnRhOVliRDhKUzBi?=
 =?utf-8?B?cGdqQzl1bUROY0xwenc1RHY2cVM3YzhYY1d1MmZwZHJlc2tYMGl2bHlWODhl?=
 =?utf-8?B?WUVvSjV5aWRUdkVsMWFqOVhMSjZ2eDh5aXNtblUwZDV0bHhLN1QyTGNIY3B2?=
 =?utf-8?B?OEw2WVZzKzBrS3FFajA5cVU3QjdmQzFtb0JXU0NOWmNpVDgyUG1XVHBOdklB?=
 =?utf-8?B?MVRBYVNLNGI2Uk5pbkUvVlEyR2pReDJKTzVUVWtPbis5TFdWNmh5TVJsOWND?=
 =?utf-8?B?aE9aUzBUcXlWWUR6bU10NU9QTHlQVklpYW5rR1VVSEM5WFZMenNLL09xMkwy?=
 =?utf-8?B?ODFwZ2lzeE4rZEw1d01McVhOdmFIam1jUEM0UUxVM0VNY2YybE5tcEd0ZDIz?=
 =?utf-8?B?TWVjYm5YVGcwTERKNFdzRkFjOWxLV1hIZXJWa3JUQlpJRFFmaEJjQmhXRVAy?=
 =?utf-8?B?b0p3bUdCT0c5aGtUc0VpOEZtS2RORHA0OTlxS1d5S1FNalNWSjU3dnRJa3dZ?=
 =?utf-8?B?KzZhSkFGempwUGtPOE5DY2xRaWxBWmpSZ0JiN3M5Q0k5V0swTXFVVzBXUGpW?=
 =?utf-8?B?SklNME40elJIUS9sV1FFcG9JR2ZwcUl6WDM5d0JLV1FvUXEvNGlKVExDZkZZ?=
 =?utf-8?B?QmRqTHVZSWUrTXJ4SjZmVUNlMXFpcVB3MjA0bmtLVnZDZktaa0g4em43eU92?=
 =?utf-8?B?U1BjRy9jc0J2S3BDN3ArOWpJb29mS2NpMU1rTmp3MHUwTEFPUG9oVlBaYnNT?=
 =?utf-8?B?RUlFRE1sZXN0dWQvcVZORVF0ckxvL0NoeUFFWkwxc0xMKzlWL0JvQmVQZ2JE?=
 =?utf-8?Q?PVDGIKxds0l2yl8BKgwhTOI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8E22926F984B7A4A9691A02541EFBAE7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08943a28-cad6-4e68-fd80-08dd679be3c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2025 10:42:19.5462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kVmHK4BkRhuQ8DKrS0fRJQZMqzp+WLGca4orQdyWFN6opGqk/Qmge5HV702cCbR/XSp1MgPu8yaW/OTB70iTZ1Cx2ANcyHcXc16bcUPtdi4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5278
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

T24gVGh1LCAyMDI1LTAzLTIwIGF0IDEwOjEyICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFdlZCwgMjAyNS0wMy0xOSBhdCAxNTo1MSArMDIwMCwgVmlub2QgR292aW5kYXBpbGxh
aSB3cm90ZToNCj4gPiBQYW5lbCByZXBsYXkgaXMgc3VwcG9ydGVkIGZyb20gZGlzcGxheSAxNCBv
bndhcmRzLiBTbyBubyBuZWVkDQo+ID4gdG8gY2hlY2sgdGhlIHBhbmVsIHJlcGxheSBzdGF0dXMg
aW4gdGhlIHByZXZpb3VzIGdlbiB3b3JrYXJvdW5kcy4NCj4gPiBJbiB0aGUgbmV3ZXIgcGFuZWwg
cmVwbGF5LCBzZWxlY3RpdmUgdXBkYXRlIGlzIHN1cHBvcnRlZCBhbmQgaXQNCj4gPiBpcyBzdWZm
aWNlIHRvIGNoZWNrIHNlbGVjdGl2ZSB1cGRhdGUgc3RhdHVzIGZvciB0aGUgd29ya2Fyb3VuZHMN
Cj4gPiBpbiBGQkMgdXNlIGNhc2VzLg0KPiA+IA0KPiA+IEJzcGVjOiA2NjYyNCwgNTA0NDINCj4g
PiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFp
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMgfCA1ICsrLS0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gaW5kZXggOTJiMDBkYTRjMGFiLi4yZGM4ZmY3MzRiMTEg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMu
Yw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
PiBAQCAtMTQ3MSw4ICsxNDcxLDcgQEAgc3RhdGljIGludCBpbnRlbF9mYmNfY2hlY2tfcGxhbmUo
c3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoAkgKiBkaXNhYmxp
bmcgUFNSMiwga2VlcCBGQkMgZGlzYWJsZWQgaW4gY2FzZSBvZiBzZWxlY3RpdmUNCj4gPiB1cGRh
dGUgaXMgb24NCj4gPiDCoAkgKiB1bnRpbCB0aGUgc2VsZWN0aW9uIGxvZ2ljIGlzIGltcGxlbWVu
dGVkLg0KPiA+IMKgCSAqLw0KPiA+IC0JaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDEyICYm
IGNydGNfc3RhdGUtPmhhc19zZWxfdXBkYXRlDQo+ID4gJiYNCj4gPiAtCcKgwqDCoCAhY3J0Y19z
dGF0ZS0+aGFzX3BhbmVsX3JlcGxheSkgew0KPiA+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkp
ID49IDEyICYmIGNydGNfc3RhdGUtDQo+ID4gPiBoYXNfc2VsX3VwZGF0ZSkgew0KPiA+IMKgCQlw
bGFuZV9zdGF0ZS0+bm9fZmJjX3JlYXNvbiA9ICJQU1IyIGVuYWJsZWQiOw0KPiANCj4gUHJvYmFi
bHkgeW91IGFyZSBzZW5kaW5nIHVwZGF0ZSBhbnl3YXlzIHNvIEkgdGhpbmsgeW91IGNvdWxkIHVw
ZGF0ZQ0KPiBub19mYmNfcmVhc29uLiBFLmcuIFNlbGVjdGl2ZSBmZXRjaC91cGRhdGUgZW5hYmxl
ZD8NCkFjaw0KDQo+IA0KPiA+IMKgCQlyZXR1cm4gMDsNCj4gPiDCoAl9DQo+ID4gQEAgLTE0ODAs
NyArMTQ3OSw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZmJjX2NoZWNrX3BsYW5lKHN0cnVjdA0KPiA+
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqAJLyogV2FfMTQwMTYyOTE3MTMgKi8N
Cj4gPiDCoAlpZiAoKElTX0RJU1BMQVlfVkVSKGRpc3BsYXksIDEyLCAxMykgfHwNCj4gPiDCoAnC
oMKgwqDCoCBJU19ESVNQTEFZX1ZFUngxMDBfU1RFUChkaXNwbGF5LCAxNDAwLCBTVEVQX0EwLA0K
PiA+IFNURVBfQzApKSAmJg0KPiA+IHNlcCAhMCANCg0KWWVzLiBJIHdpbGwgdXBkYXRlIHRoYXQg
YW5kIHBhdGNoIGRlc2NyaXB0aW9uIQ0KDQpSQi1lZCB3aXRoIHRoYXQgY2hhbmdlPw0KDQpCUg0K
Vmlub2QNCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+IMKgCQlwbGFu
ZV9zdGF0ZS0+bm9fZmJjX3JlYXNvbiA9ICJQU1IxIGVuYWJsZWQNCj4gPiAoV2FfMTQwMTYyOTE3
MTMpIjsNCj4gPiDCoAkJcmV0dXJuIDA7DQo+ID4gwqAJfQ0KPiANCg0K
