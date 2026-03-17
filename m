Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIlnIx8DuWmEnAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 08:30:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC572A4D22
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 08:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66F110E15C;
	Tue, 17 Mar 2026 07:30:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ntlD3OsK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550BC10E49C;
 Tue, 17 Mar 2026 07:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773732634; x=1805268634;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=tmK7cfHZ0UyvhMThoikJn3y1mYlavz0uXlenhChEewQ=;
 b=ntlD3OsKoA2P1DMjtdP+D7D6jdtGHYjFq8bJCaws2sisjMLZwdQ1T81b
 Q4udWM+87Nu0RDJZ2J0kw8YCpfAeVv63dHVDfXVaEDoigtYZ6CI1fLFrj
 +WPEW9kzropCCj1Oyu9UHiR1o36rHWbiNKt1GGCg9rGaEFiM9BMxGjIhZ
 ncyABOtxpJuGykFcFcnn7/lq4H4xuD8lWpG3qvsS/3zsdN7ZvAipr4x8D
 Yz97TISD5PSrFpJylwwYE6Ia/nmGaiiz6vmyVfRJSXDPAnlGxb9oOnk36
 8s7co/5gZexZZaRF+5Lv7A2hgDDyDVC+2Gzi/0wFbxc5krXnN3pq6KXzu g==;
X-CSE-ConnectionGUID: b4NDPHIvTAqgY3NybDN3fQ==
X-CSE-MsgGUID: 9T6HlLqiRsmBX28/NOiJgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="73936280"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="73936280"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 00:30:33 -0700
X-CSE-ConnectionGUID: DhnJoZDdSmmQBYMwjMVaog==
X-CSE-MsgGUID: Ilo3wD9vTOC659TT6/27oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="245206182"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 00:30:33 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 00:30:32 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 17 Mar 2026 00:30:32 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.42) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 00:30:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y9sFyTP+ZPsHe71jO1PkWgj9Zdk9iG0jymQEHnNCh+oj6sUUXwELIMhh3doLHa/qrfDebhDqRAA9zmWAaydmBOVHa03wiHrSmj1pTSjOKq0OoEHirbQoInt5eSXLAEc1y7KxvYEyTwYEsMQuCu14WpDEesVHlZN37hxkDBzgmqMGdvUzIPVK9e38+EswQmgPc9xfcaGel+OrSRCX8zhKOEvgyqsHMVZfqD3fZmLNxUf8k6zyFdO6AMuVHfQ8oNL2DPvN2n8yiUd2dr0p9bnWJuaeII1Q60HkkmTX6RbbyjVB0z4eJDwJeLJna0FjRRlhj3ozMabkKrcrbWZ/RRiEzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tmK7cfHZ0UyvhMThoikJn3y1mYlavz0uXlenhChEewQ=;
 b=mF9jBRvsUgYHcA5lw6UD9mRQob52+NExy7WmjgX+RsM+swzkxRXYvZhGH4iQ6kpUVE+cxFO5gyW6IG3Xt6+b+D4+4yRAjRlH0mUkeJccn/Wa6F030b+Guk0uDMFgN/27XIxQCiQ74WcpwxTIXnqls3wVYg+vJDykNbN4SOdxprnZeHuP08h0A8DpBLsP6ufpco4eYow5X+jQmUofydODz19XdI0pvHW1JveUk/GUwyHX4pqcePN5ij5AmfKJaq8X84Kq4Xb4K7fvDw3Bc1Lx6zXx/Q4bEIMln7ELtNhvG5hzgDKkZrdf2PPsYK6SpIyi8qU30ooytXtGH1KU3pO82A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB5280.namprd11.prod.outlook.com (2603:10b6:5:38b::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.17; Tue, 17 Mar 2026 07:30:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9723.013; Tue, 17 Mar 2026
 07:30:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Cavitt, 
 Jonathan" <jonathan.cavitt@intel.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/psr: Disable Panel Replay on
 DP_DPCD_QUIRK_NO_PANEL_REPLAY quirk
Thread-Topic: [PATCH 2/2] drm/i915/psr: Disable Panel Replay on
 DP_DPCD_QUIRK_NO_PANEL_REPLAY quirk
Thread-Index: AQHcsuQODAEkIM2YCEazhaOcZok6dbWs9leAgAVjtYA=
Date: Tue, 17 Mar 2026 07:30:24 +0000
Message-ID: <dc51fd6fe074b484285118f8348f11042662bab0.camel@intel.com>
References: <20260313122145.1747175-1-jouni.hogander@intel.com>
 <20260313122145.1747175-3-jouni.hogander@intel.com>
 <CH0PR11MB5444DA3218F5E72004CF411BE545A@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB5444DA3218F5E72004CF411BE545A@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB5280:EE_
x-ms-office365-filtering-correlation-id: 7a849e1e-0c65-4cec-aaf6-08de83f70e25
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|1800799024|7053199007|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: skDCnnMzas2se5rkZMs0jsuVw9c8tBEL90NNTvb3imgXc0qkEdVPFuGcB1Vmvudk5QKqBbMkxeQcGfU72bg7qhOwGxgneWqtYbpELFEAEHFc+wQEr5Rz9hHz4VEA6ov4jYjjXQy6+3fS6gMPIH2y/10w04lOeKk1fCgQxwyU4vNr2iIWp/sb4/YbIyLO4NpG6arYGHn7c1GR4roqpmQHFbObwSx6Fsn5dV+83vD45crYmK3B0U5cVNkB9U7C2hr6t2vo8Li/nw13RTMrIc7P7wm2AzGq0Wqfr9ZSTAFyyKBB5IyH3umZ2cc8BmnDE0i9/+hHtOykb937qI4qsHV8f7hregOgnEg2qx2Cn3OJcavmxfcfpJ9W01MJgs13LCXdMmoNjCJtiFcPd56ohmMk/V2/xcnKtlYT5pTPqGNCXMCo+R8UaAPD7mM9UOajGbloNIsmh4sIWtAtC9uMOd4h59/ykE7ZF+zZH5ujbZ3jEmzLhrU10yT2sKD9yevHhdV8v0KT6ZYriL6qKOIONPzWNhxTrM8abuL+Texo9Vsohn2G2qu5gOrAsvEBBkIKSD6jMcoPXBYNQJteGuLmGlOuHnb/OB5yeD+1vGf0dLo/blKPaN7dEUBGnmtTDy0Q9fX1EzQMZHnOrkm9fyDSLlK8GDcgy19lD4hFZlKHo+3mLOAtBqbW3aGo+i8N2ZgOhyIRbd4jhmsVvelWoi9xs8tMsNlmA/k6q+pAW04T59t+qCM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(7053199007)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2RPSTUrOW9IdEtvMmZBZUdyRUNBR3FleHFRcEFucGt6ak12cW1oS09XR2d4?=
 =?utf-8?B?UlVTR3h0Vzh5N0RhYWt0TnJnN01YaFRsU1h4UEJ2TlpudGhhaTZaZmJBYUc0?=
 =?utf-8?B?Ni9KdG5WVzRzWXZ4MHF6Z2VVZ1hRbnlCM0xtZzRBK3RsZGpNSFlzQW5ja1lH?=
 =?utf-8?B?MFBUVEF4aGRLVVNmb3ZrMFRKUFZROXVaaklBNXdwTFZWTE1OWXZiQ2x1dUg3?=
 =?utf-8?B?VjRqWHE5YXAwcnRENVFFVzdqQVNsNnd4YzhuVWhGMGR4WUlBdEFmWkhMRkVU?=
 =?utf-8?B?bDNOL3FRd1Vsc0xOVHNIaVZDVCs1Um5aN0pBY0hVQWZvNFliRnZqT2N0NUZj?=
 =?utf-8?B?R1BWSkVTcUJnUjFiYUloMXk0TUxkdk53U1BTcy91YmZTUGxhckpNK1RwOFQ1?=
 =?utf-8?B?ZHZWck1pWEVJV0pvb0NiNUloM1JqaTlyZ3lYZy90QUlTZDl6ckhBcEdqTEl6?=
 =?utf-8?B?T1JBWHQ3eHBZVE9tVUJGMW5LVG1FSGZXVnh4TkRzN1RRUnBRSzI3Mkx2RXdz?=
 =?utf-8?B?VU15K1hTRDF2S3RXUk9TSFdJT29TUWFaOWhrNkYvazBLazdVUzlUT1JqYmRJ?=
 =?utf-8?B?YVA5ZGRWR2E4VjhULy9uVVNpYkU3TVdCNXRPbGI1ZElXVFhENGhvVzVoa1pw?=
 =?utf-8?B?VTgySnFSY3B0VnNCR2tsOTdCU0tXZHNjTEFjK0drL05lU296NjJNcit5ek5Y?=
 =?utf-8?B?QzdQVDBBcFA4dWx3WExCRnA3Ti9kNWNzdDBrSTdWYkRvM3c3WkducWVISFcv?=
 =?utf-8?B?SmhGRTVnSjFnYmRNVkkwSlhYc01zNFJDSldNbjJtZFNUSDRmaTdKTE1ORXdL?=
 =?utf-8?B?bFhiUGhoL2FEMmMvV09ZaDlSWjFWcXZVNDFvTkVUWFpJYktualgrTzgrWmkw?=
 =?utf-8?B?UjAxekZSTXNrN3hOM3AwalZjRFJUekFOUmhiR05ZdS9ITUV5ejNaV0l2T0Qr?=
 =?utf-8?B?bXlray9PVUlSbXdQU0N2a0hnZTdSbnRIMjU5SGc0TW9oR3o2cFEzbWVaV3Uy?=
 =?utf-8?B?ZzhlRFBFZzNhV083WHdabXZva2NOck1lV2lOZXFyajcxQ3JMTDQ5UmZkdThj?=
 =?utf-8?B?WnF5STF0ZFlXSThYbGtMazRTc0tITjBOaWx3VG1xMDFjQnB0UksvMFJBQ25Q?=
 =?utf-8?B?MWZWeSt3NzJsUGNKdDR1UGdJVmhiaXREMHJ4N2dma0ZFdlUxSGdKMU0yakVJ?=
 =?utf-8?B?WVZKTDdSTFZ4UFNxYVloQkkwMm9XMU1JcXJHY3Fqa0l4a2QxeExXY3pKaUtE?=
 =?utf-8?B?djNDaTkwVTBpODJiVHlIY3RpQzROd0p4MVYvWlFKcDRMRFJlT2JlUkpEOXdJ?=
 =?utf-8?B?MXVmY0QvSmxZelVlRC83ZGN3YmdudmJlakF4YkdZZXAyUDRkK0MyTWk5STRG?=
 =?utf-8?B?RmdZNlNEZHpXaUF4VnYza3k3Q1kzMnR2VlBYVytHQzBndmIvRStaWFhhenpJ?=
 =?utf-8?B?bkdZdjZ5Tk1NblF3MmJjM3BSeC9HK2hQdVVqZHJCTGpPUHVXVkd2Zi9kUjcv?=
 =?utf-8?B?Vkp1UnljeUE1VEp4N2JxcnA3RzRjUW93eVhDdmhwUitQV2tUMjdQSHI5em9E?=
 =?utf-8?B?YVJNQ1VqS0ZIYUQxeFdZa1kvdGJJaWZzS0JMVTIwNlZnVFh6NkxielNTMzFw?=
 =?utf-8?B?UnlNbm8wL1FRMHpBcVJ3Mk5FRWhhSkx6cWkwQnJoQ2htcHBpVDBuQTk5RGxE?=
 =?utf-8?B?K3pZZjZNcCsrT3QwK2twUUVVRzNKQUYzN29IRGxqNlBXTlduc3c5dmx2Mk1s?=
 =?utf-8?B?eUoxWTdiM3BEMllkMFc1SGVlMEdvblg5d3hldWJ0R3F1Uk5pQmE3c2JYODU1?=
 =?utf-8?B?bGd2clJBdnVtaE0xem9kR3Y5RkNyZ1Nra2RWZmovbTROa0JNRm85SXF5TUMv?=
 =?utf-8?B?VmgvUWhMV0NZdkNJR21oMUJmODlQdGl2RG5XTnBDUU9CbFlObkxMaVEwUmNo?=
 =?utf-8?B?TmlXVU1jVURZSHFjUDhmcGtQYXN0WG1ISnkvZTh4K2tpYzRMSVNIQmFYU25U?=
 =?utf-8?B?TnVuYkNVUTRTRjFNVURnQzlWblFwanVmK1JRcVNYeUh0dWZVNWxqTWpQVTBl?=
 =?utf-8?B?aVhTN3B2ZURFc3NuUFpVdkxSN0RhSUVMNU9BaDNTcEdZNWlNWHZ2SFk0NmlV?=
 =?utf-8?B?YzFKS1dQNTQ3RnZpL3ovQ2NJeXhZQ3BCTzdsSFJkNDh5ZW90T1V6Wjk1Zmor?=
 =?utf-8?B?aUdHRnlBNk9PSU4yNlhadkkrZUVLODFsR0QzbGR2Q2xTaWNMQnoxYStOSHo2?=
 =?utf-8?B?TkF0a0tzdW9uT2FNRzFoMkZsdHRtVm0yRmdXcUJTZWtDdWpSbFhodWdvblZU?=
 =?utf-8?B?L2NPVzA4bXZlY25DSVd0TXd3NEZiL3RHZFFlRER2SDFNYjRsUDZadVA2YjBx?=
 =?utf-8?Q?ACOT5LRlWYzzq1lb7xLMHYb+JY2x2N2uaTIvKBtWNfMFA?=
x-ms-exchange-antispam-messagedata-1: pyeuMyFpRduksVe31MeFjw9iA5lZj7W5iHo=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E9796F4CEFEADD47A6CB47401D52AC7E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ro1KPABVV8AG9IWY60PYQwTU2IBh4I4idCBXCv3KmXVnWPtIUmLH8sioIaxOPc3nHXQ/fGTq4zyD0NS0+M72L2y8Fr9bXw4ghMQzvQKYL65YI2+1BOSpAryyEJ1qPmb7RtInURKWIvAVXE0J9hV6mqLQOZmEG4zeN4PG+Yhq2QQZdjx8m3yXezlxYXEJ1ijoIIkREp4xG3Oz5e3fEDZ01mt5ayaDm+PtXAg3S4y71CT4rs+aaNcNYVNpumyhk+MyIjG2UGfRzh74ibh3u6z3h92L3ctmW2nbYN69fe65ofJTXoU6p1bUnbu9u054I1uwPbon6UV7Af88Z/pk47lU9w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a849e1e-0c65-4cec-aaf6-08de83f70e25
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2026 07:30:25.0481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TMB2+N4L7zCfxGV39TtaVbx/PSeWyyJhMZSwmBny9xWEerTFPvwBOOhGxSQ4ZuPRVQP6PtzzGI2S9KaEtFcCkdxEnoZSCCYsOHuf9OFqNP4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5280
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,intel.com:dkim,intel.com:email,intel.com:mid,patchwork.freedesktop.org:url,lists.freedesktop.org:email];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3DC572A4D22
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTAzLTEzIGF0IDIxOjEyICswMDAwLCBDYXZpdHQsIEpvbmF0aGFuIHdyb3Rl
Og0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+IE9mIEpvdW5p
IEjDtmdhbmRlcg0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDEzLCAyMDI2IDU6MjIgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgSG9nYW5kZXIs
IEpvdW5pDQo+IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAy
LzJdIGRybS9pOTE1L3BzcjogRGlzYWJsZSBQYW5lbCBSZXBsYXkgb24NCj4gRFBfRFBDRF9RVUlS
S19OT19QQU5FTF9SRVBMQVkgcXVpcmsNCj4gPiANCj4gPiBEbyBub3QgZGV0ZWN0IFBhbmVsIFJl
cGxheSBzdXBwb3J0IGlmIERQX0RQQ0RfUVVJUktfTk9fUEFORUxfUkVQTEFZDQo+ID4gaXMgc2V0
DQo+ID4gZm9yIHBhbmVsLg0KPiA+IA0KPiA+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1ZXMvNzUyMQ0KPiA+IFNpZ25lZC1vZmYtYnk6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiANCj4gTWFrZXMg
c2Vuc2UgdG8gbWUuDQo+IFJldmlld2VkLWJ5OiBKb25hdGhhbiBDYXZpdHQgPGpvbmF0aGFuLmNh
dml0dEBpbnRlbC5jb20+DQo+IC1Kb25hdGhhbiBDYXZpdHQNCg0KVGhhbmsgeW91IEpvbmF0aGFu
IGZvciB5b3VyIHJldmlldyBoZXJlLiBVbmZvcnR1bmF0ZWx5IHdlIG9ic2VydmVkDQp1c2luZyBw
YW5lbCBPVUkgaXMgYXBwbHlpbmcgaXQgYWxzbyBvbiBkZXZpY2VzIHdoZXJlIFBhbmVsIFJlcGxh
eSBpcw0Kd29ya2luZyBmaW5lLiBTZWVtcyBkaWZmZXJlbnQgcGFuZWwgbW9kZWxzIG1heSBoYXZl
IHNhbWUgT1VJIGFuZCBEZXZpY2UNCmlkLiBJbiB0aGlzIGNhc2UgT1VJIGlzIDAwLTIyLWI5IGFu
ZCBkZXYtSUQgQmFsc2EyIGluIGJvdGggcGFuZWxzLg0KDQpJIGhhdmUgc2VudCBuZXcgcGF0Y2gg
YW5kIGFkZGVkIHlvdSBhcyBDQyB3aGVuIHNlbmRpbmc6DQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTYzMzQ3Lw0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+
IA0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyB8IDYgKysrKysrDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+ID4g
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBp
bmRleCA1MDQxYTVhMTM4ZDEuLmE2MmUwYmQxMGYzOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC02MDksNiArNjA5LDEyIEBAIHN0
YXRpYyB2b2lkIF9wYW5lbF9yZXBsYXlfaW5pdF9kcGNkKHN0cnVjdA0KPiA+IGludGVsX2RwICpp
bnRlbF9kcCwgc3RydWN0IGludGVsX2Nvbm4NCj4gPiDCoAlpZiAoaW50ZWxfZHAtPm1zdF9kZXRl
Y3QgPT0gRFJNX0RQX01TVCkNCj4gPiDCoAkJcmV0dXJuOw0KPiA+IMKgDQo+ID4gKwlpZiAoZHJt
X2RwX2hhc19xdWlyaygmaW50ZWxfZHAtPmRlc2MsDQo+ID4gRFBfRFBDRF9RVUlSS19OT19QQU5F
TF9SRVBMQVkpKSB7DQo+ID4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+ICsJCQnC
oMKgwqAgIlBhbmVsIFJlcGxheSBzdXBwb3J0IG5vdCBjdXJyZW50bHkNCj4gPiBhdmFpbGFibGUg
Zm9yIHRoaXMgcGFuZWxcbiIpOw0KPiA+ICsJCXJldHVybjsNCj4gPiArCX0NCj4gPiArDQo+ID4g
wqAJcmV0ID0gZHJtX2RwX2RwY2RfcmVhZF9kYXRhKCZpbnRlbF9kcC0+YXV4LA0KPiA+IERQX1BB
TkVMX1JFUExBWV9DQVBfU1VQUE9SVCwNCj4gPiDCoAkJCQnCoMKgwqAgJmNvbm5lY3Rvci0NCj4g
PiA+ZHAucGFuZWxfcmVwbGF5X2NhcHMuZHBjZCwNCj4gPiDCoAkJCQnCoMKgwqAgc2l6ZW9mKGNv
bm5lY3Rvci0NCj4gPiA+ZHAucGFuZWxfcmVwbGF5X2NhcHMuZHBjZCkpOw0KPiA+IC0tIA0KPiA+
IDIuNDMuMA0KPiA+IA0KPiA+IA0KDQo=
