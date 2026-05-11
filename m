Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJpoOwpnAWpUYAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:20:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4869C50827E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E44810E48A;
	Mon, 11 May 2026 05:20:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T7emoFlX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 350CC10E47F;
 Mon, 11 May 2026 05:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778476806; x=1810012806;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ho0y1L3WVDKAsMAJqTmARtN3XWitcCGxob10beEGxao=;
 b=T7emoFlXpOyNfLsvxIWpHmXab0X4Oey2cLRIm/mNDBJhFiSuPjHXo1wk
 LIEUewnUQV9PDR19w1X6GXgXDvrbyF8FBUrlinFH1FE2bbB89SdE057gq
 U17aG4uQzStTVRjIQvg6lHBd/W7ybZmEiqPnwoih9rBNXnAiX6Vkw9acP
 WkIDDbJ17Ru+X9Q2ZUHZSmos8SFVZAx3iLo6d8inMXx9Yq7E6u7/gC59m
 k+3jW+pFNGPoQiZj9jE59viXl9ZuuetbqPQNrBiay4OJSDRhUGnNNAAzE
 dCZbYN/vxIZqNs/X1sszyBvgao1WcG9bcQ8sZacoS0Ox8xBZiBwascL6S w==;
X-CSE-ConnectionGUID: nrDdm/snRWSkApOvLqoxgg==
X-CSE-MsgGUID: +reqAYvNS9GLm5G6EsuP9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="83204454"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="83204454"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:20:06 -0700
X-CSE-ConnectionGUID: jaTpATGTSei8j3/9IZiFhw==
X-CSE-MsgGUID: 357jK6PhSKS8pf5CDc8ONA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="236375752"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:20:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 10 May 2026 22:20:05 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 10 May 2026 22:20:05 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.55) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 10 May 2026 22:20:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nx1WfX+zomjcnBWXQy9E3XKR2n+Finv2yHzr5LMRT+ixjOEa2lrk1vDQOp1fQsBQkYmtVz2OuF9nIndqP2sB7RNOnO+6cZUSZlPf1n2jfcnWF7MQZIKIniD2AjbPXhTGT8JfK9Id25GcnI7peWgnpM9XkrS41B7cnnsgjsv8NJ7x8aGGa4VDSsZQNd996usdV7zCiMEI+0gJGPoKqjFwkdcMyUaLm+SIdxzWeF6frBv784QRVXq+Jq3C3uXdalrk1DYwYUpnvRom+0UZBogu6cjxRnO9fpc+Z7chfzNCnTAIlmj0mFGDgGvdsKQrYWsNjRlRraJPe4lacUAO+AmZBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ho0y1L3WVDKAsMAJqTmARtN3XWitcCGxob10beEGxao=;
 b=ZmqEJReHVjBNspLtke+DpzHn7sc2g/OjmuUnY7Cz0kcI2MO3S573TLxEw18L4ReOJKiOHfEB23KVwBWBvrX0DPbyA14FVSgu41WgSbX8j1wzvIYqXPcI+FE5EodmkbId4yr1PBNBJ4nh01xq26/RmHmDVKMB+/QyTbfUaIjjWDairvXzRevVeY7DOG2qwOWqbCI8LEfVZNH9o6Y+8Ho+O6aHHBZVQ2Dxxa+pd44D2n2DHu/iBleKZkkb4jixqWrcuiF3E/ttTcoD1o9jm8jwux1uBOReF2D2cE9jEd5f/6rNCVnhcf/Y+pTi/5KYvrtki/t8rWQOXSfYOsYm+rZOLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS3PR11MB9671.namprd11.prod.outlook.com (2603:10b6:8:38e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.23; Mon, 11 May 2026 05:20:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 05:20:03 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "sashiko-bot@kernel.org" <sashiko-bot@kernel.org>
Subject: Re: [PATCH 2/2] drm/i915/ddi: Fix cleanup after HDMI connector init
 failure
Thread-Topic: [PATCH 2/2] drm/i915/ddi: Fix cleanup after HDMI connector init
 failure
Thread-Index: AQHc3e+hEQ7TjffxukSVdD+XXM9Li7YEMkwAgAABdYCABBwBgA==
Date: Mon, 11 May 2026 05:20:02 +0000
Message-ID: <379b5291725baf265b31a1ab159cccc1f1968340.camel@intel.com>
References: <20260507065940.2046690-1-imre.deak@intel.com>
 <20260507065940.2046690-2-imre.deak@intel.com>
 <f348388379810e126a436259cd9e59237fc8c4cf.camel@intel.com>
 <af30hT2PQOtWlphB@ideak-desk.lan>
In-Reply-To: <af30hT2PQOtWlphB@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS3PR11MB9671:EE_
x-ms-office365-filtering-correlation-id: e3689b54-a61c-4283-99a2-08deaf1cf488
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|56012099003|38070700021|22082099003|18002099003|3023799003;
x-microsoft-antispam-message-info: vSJR82TZkt2jb6A07SrSnQvxiMAG7PsEgXcEUWJDoGcvLDEezNcjYolAo92teR8QNaisOGtdRhgyPjU4YZVd1AfA7/FFPPICiokbYkqNrG6WfjRPox3dhU6z6yfxBcjSHrjOAtDuhgoTtSium7PcjPcNUTV/sT04OqRwWjBQbKQRhlwT5BdwFXUNkSB874fUYayO98F/3DFAf2bxSV/VRslzVFjq/rx8CnjYa7aD8V50gEsQ30BxnK6HV64OJbnZi5bY8CwaupIONcCmhOY4c3fjjp90qwEfVj5ie/BUC5fGA8BMXKCFruRR3SCmCrLk2yHkVziCkH93CxVzpMXxVtxxgQmdgoXE59WEeKedMNVOP/60K208E15lWTc/DC+ZK7/C9Vr6lgCNlwYIqFrUaO5fgQVGT1JiX3S8u9lmv15XBLdtv102ibatkgxndXnFE7fhclkqSQmbMX22c8zuQmDXTTATegU6fRMU9rJZ+jjeQT7GCTpd3oUs7SFegJwsZkqNVQxd+3SOhYFUeHgNPjUrZcNRLXgay8r/v0y4/GlnqDTaVGy9kDvpgUdJ8rCPPVjUsJSlbQSdVOr4CNjHb+EGRnJoC/gNK7IwH1bDx5v8WrLUZ6nPg0fzSHXQIMEa8/1FlSbfcF3ed036djSi/zZupHwe9KpPfd8x6CNcAYYGZcRKTN1b7MVx/C6iKI4iSLighMRgfc2cooMPE4fy9c6OKexaevmWhTEQgAvvrBGMiaRXvmslktKehL1J/BPj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(56012099003)(38070700021)(22082099003)(18002099003)(3023799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RGQ3SFErd1VkSDBCUWNCUUxyTWFNNytWV1ZXVjgyK0xQSGhXNTg1WjVoY092?=
 =?utf-8?B?eGhteWExN29oMGNZd1VXYWsvSnFXOGh0NXorcUx4bWxHYVZ2YzRGOEhsbmVu?=
 =?utf-8?B?YjNKcFZUaGVIU2JjZ0ZDTlNDSytTaDNDbWNTNHBna2o5cmVFamVsSHFYVFJo?=
 =?utf-8?B?bkJlTVNhZGhwbnZSeDQ4bWFsVThETmZMT3FrSDIzR08wSUFnRUR1aGRmc2ZC?=
 =?utf-8?B?dC9vMVE0dmJtdytQTS81M3owMDQ2Q0dETE50bFl0c0UzQzExWHV5TFhXR2xH?=
 =?utf-8?B?Ty9Xa2g4YlNva0xwS2Y2a3gvck5YeTV0NG93d1FzdnlqU1YxQkVYaHhFQU5w?=
 =?utf-8?B?VlBxcTdtWHdIK3B5dUZMN2Y1OS9lS01xWXptUUJBWExVaUZJUVEwVmliRGdw?=
 =?utf-8?B?M2RvQXZCSUoxTFQ1akdrL015KzJoRU4vYXI0bHByUDBDaUZta2tTYW1QSmNW?=
 =?utf-8?B?ZlFtTDR1c3RIZGFtU1RvTlFpMlorYy9sRlBBYVdLclR1TlZveU9CclVUK3JZ?=
 =?utf-8?B?NUVBSDJNWlpWbGR1cGxpUHkwb3ZMSmc3WmM3MnBycENZZkdVeGVmSmNvUkcw?=
 =?utf-8?B?S0MvanpZZXl6ZG9IaFF4VHVqRDVDQjRmdnMvU3dmK1ZRTUIrcERqb0dpWWF4?=
 =?utf-8?B?ejVxY2Q3WGE4MlJVZlJFZkJoVWpVTFFJeXRBaU93RVRxeFhLTEFkU3o0TkdN?=
 =?utf-8?B?dkVRMzNmSVlRaTRjMGtOeUNwaW5QRC9KS3RmL0FIa2ozL2p0TTZPUmZzUy9v?=
 =?utf-8?B?Vll6bDl5SjhwRUlzQzZha3ROWkgzZitWYnhHVlBYZDk1WGJHbldpeHd1a253?=
 =?utf-8?B?QmhPMDIvRkk3b0hBMkR0WkIvNi9JWEY0cXNhU2lzNk13WmM3cXlNdk5tN3hI?=
 =?utf-8?B?VUVGNXhtakNscFExVUsrUmQvSmVINDFDUjZHVjRseC81eEhqMzIvSm81NmdP?=
 =?utf-8?B?dTNyR1lITnFnOXk0c3lFYnZrZlJMaGlxQTZGaUlsVCs1ZjVRR0VzaVlsL29i?=
 =?utf-8?B?aWN2aDYzUjdtRXRkelRRcVNkUDVtdGJ3dmpjcURUc3hrVUorT0hUOUpYUGND?=
 =?utf-8?B?Z2QrbkEzUUo0R2dtREhBTlJxaHF6b25walJzZXpHbzZ0RnFsZzVYc0hocjVE?=
 =?utf-8?B?REQxUDQ4NmtUT2FHSkQrcTZGaUcwbFFjdVFlOUdMRWpMTVQ0RDJkdkZONC9S?=
 =?utf-8?B?VnA1OUFKOW5YWTkwdk12MTJVRU5ibGJKOERQRmllSVY5L2ErcmRJWFBsK2Js?=
 =?utf-8?B?OGlTMmtqU2Q5Myt4bTc5SWlBajgxWGlaTkY4RU1XMUorVzdvUzQyZHE3eHZH?=
 =?utf-8?B?RXhPbGRSUmExd2kwdWsrOHVvWFRnYWdhdWRkMVR4MHJlSFo1MTd6c0hHSzNP?=
 =?utf-8?B?ZUgwMkV4dGJ5RVpLVy9RTjFxbEQ1UWhEY0toTmovVUZrZU90U0pWNWIwVjNG?=
 =?utf-8?B?RUpMNWV2ZFgramRNZFpZNVhyWTgxK2NTOUw3elpHNC9sN2tLU0dBb1lMTktH?=
 =?utf-8?B?K1ZJZDJiU3RDYTFySGtvSTFHSlRudHpTTHJpSEF1dHNNL2lvTi9UQWs3WFlp?=
 =?utf-8?B?bHZXS2U2SkszaGFrYlBCTWVzT2RoTXZZWmZiVUhianJNV1ExaC9sZGRvdi9Y?=
 =?utf-8?B?ZGFPbDRNNHN6S0ZqUnpGcjZueVMwZEswQ3RlSWJpWmNyS1pJZEIwZXl2OXpB?=
 =?utf-8?B?UmE3Vm1RVVdHb0JFZ0JPMmNKUmJHcjBnWk9IMzZ5TDR2cmlLRi9mZWVGZ1Vr?=
 =?utf-8?B?WEpaSlk1Z3FKUWVHWTdEU3FEa2xzUG9yOGtGRnA4ZVMwM1YzRHgxajNKN1Iz?=
 =?utf-8?B?ZkUxamYwMEtyaXdCK203b0wvOGU4OStsL2lTL3l5SXptZFBOa05sT29rZlUw?=
 =?utf-8?B?ZUVURGdrWk1QK05KTENaRktsN1VlR1hVQUxGcEF5UDkxNWNZZE1hb1RoS1VQ?=
 =?utf-8?B?Y2ZDRXdkWGlXUXU2SE5KTmZEWEdzUkgrdGdsMlA4MEdQRUxUVFRyK3RPYTVw?=
 =?utf-8?B?YnhWUDM4WjdYY2lKSm1CZ00vczhxT0t4R01XcGErK2ZaSjlXVU93SUhvRUd6?=
 =?utf-8?B?KzYrK3FhMCtKRXp6S0g1RW9FNGlqWUxIM21MTE90RmsrcmtsNVFiU0FlT2xw?=
 =?utf-8?B?dXZ5QmtVM24zQkVaWnU2ODR1SC8xaXl2L2RzN1VlZ1h6dmlHNmkwUFkyeVBI?=
 =?utf-8?B?cHlBS1B2cVIwcEpzYkFXU25XWWovZFhMbWRWb044MmRJd1h5Z0ZWSHRlbS9I?=
 =?utf-8?B?NmVVb3YxWW9Cb01ibTZBa3d6RWN6K3cvM3VyWW9FYXZxcE1uZXlvT01tRmwz?=
 =?utf-8?B?ZWtQZXdMa3RkWWxzamUyY0lyQWFDcFZlaWM2dVArYi84SnFBbHZYekpSb09R?=
 =?utf-8?Q?VEiNaJ39mcCsgRTqgX7Yd1r+f0/f4fYSd1hdjo/G9xuwk?=
x-ms-exchange-antispam-messagedata-1: Ziai5e1bxtQL5cukPiqlMAoKI0+4GdmsobI=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A056668EF820EC4FA7E96124347B4B33@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RJYg/N4v7WaOXY6tJQadAnRK3k/h+TxtT+4glHjesnQB6fLuJ73wvSgpUl1Jpo62Q3Sze7klcJN2EaL5puIO9Sl+tbW9a7rA529ZIaE8/lRUiJ52om0TvdCn30mkkFHAYi4QA3uhcoE5kq00ZGUNxyTGm5EbV7THW4QlQtxPTcoHScHpY6nLVFhPjGCbfSjMy3jTCfTJdZGbG5l+c+bFeBx/cdtPfGPgqAlmSGv5wZST+yFtau4BDqzWxBCH2pUzhIs1uT5JrtkgOWeQd8S3DKAj3qE0ExnlvnzPPBl/hYMNpEzgqK/HVXnfbVScCN1kbIuBP9XaFs16vQzQN40HCg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3689b54-a61c-4283-99a2-08deaf1cf488
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 05:20:02.8500 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yq5IiYIP3tyuxxah++gkXWOOtTPHKdl7KMaPX4X3lG9oPAIpxg1/EInZdsXbxyFg6AfTdsJIJ+IXol2E8qLFOF3ruaDQ3q1h+JwsT0vOxYw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9671
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
X-Rspamd-Queue-Id: 4869C50827E
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
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
X-Rspamd-Action: no action

T24gRnJpLCAyMDI2LTA1LTA4IGF0IDE3OjM0ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IEZyaSwgTWF5IDA4LCAyMDI2IGF0IDA1OjI5OjMzUE0gKzAzMDAsIEhvZ2FuZGVyLCBKb3VuaSB3
cm90ZToNCj4gPiBPbiBUaHUsIDIwMjYtMDUtMDcgYXQgMDk6NTkgKzAzMDAsIEltcmUgRGVhayB3
cm90ZToNCj4gPiA+IFBlcmZvcm0gdGhlIG1pc3NpbmcgRERJIERQIGNvbm5lY3RvciBjbGVhbnVw
IHN0ZXBzIGFmdGVyIEhETUkNCj4gPiA+IGNvbm5lY3Rvcg0KPiA+ID4gaW5pdGlhbGl6YXRpb24g
ZmFpbHVyZSBkdXJpbmcgRERJIGVuY29kZXIvY29ubmVjdG9yDQo+ID4gPiBpbml0aWFsaXphdGlv
bi4NCj4gPiA+IA0KPiA+ID4gVGhpcyBmaXhlcyB0aGUgbGVha2VkIERQIE1TVCBlbmNvZGVyLCBB
VVggc3RhdGUsIGFuZCBjb25uZWN0b3INCj4gPiA+IG9iamVjdC4NCj4gPiA+IA0KPiA+ID4gUmVw
b3J0ZWQtYnk6IFNhc2hpa28gPHNhc2hpa28tYm90QGtlcm5lbC5vcmc+DQo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDE0ICsrKysrKysr
KysrKystDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8Kg
IHwgMTMgKysrKysrKysrKysrKw0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmjCoCB8wqAgMyArKysNCj4gPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiA+IGluZGV4IGUzN2NjMzJlZTgzZWQu
LmNkNjFkZGI3ZjQ2OTYgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jDQo+ID4gPiBAQCAtNDcyOSw2ICs0NzI5LDE1IEBAIHN0YXRpYyBpbnQN
Cj4gPiA+IGludGVsX2RkaV9pbml0X2RwX2Nvbm5lY3RvcihzdHJ1Y3QNCj4gPiA+IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ID4gPiDCoAlyZXR1cm4gMDsNCj4gPiA+IMKgfQ0KPiA+
ID4gwqANCj4gPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9kZGlfY2xlYW51cF9kcF9jb25uZWN0b3Io
c3RydWN0DQo+ID4gPiBpbnRlbF9kaWdpdGFsX3BvcnQNCj4gPiA+ICpkaWdfcG9ydCkNCj4gPiA+
ICt7DQo+ID4gPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSAmZGlnX3BvcnQtPmRwOw0K
PiA+ID4gKwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSBpbnRlbF9kcC0NCj4g
PiA+ID4gYXR0YWNoZWRfY29ubmVjdG9yOw0KPiA+ID4gKw0KPiA+ID4gKwlpbnRlbF9kcF9jbGVh
bnVwX2Nvbm5lY3RvcihkaWdfcG9ydCwgY29ubmVjdG9yKTsNCj4gPiA+ICsJa2ZyZWUoY29ubmVj
dG9yKTsNCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4gPiDCoHN0YXRpYyBpbnQgaW50ZWxfaGRtaV9y
ZXNldF9saW5rKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ID4gwqAJCQkJIHN0
cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0eA0KPiA+ID4gKmN0eCkNCj4gPiA+IMKgew0KPiA+
ID4gQEAgLTU0OTIsMTEgKzU1MDEsMTQgQEAgdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgaW50
ZWxfZGlzcGxheQ0KPiA+ID4gKmRpc3BsYXksDQo+ID4gPiDCoAkgKi8NCj4gPiA+IMKgCWlmIChl
bmNvZGVyLT50eXBlICE9IElOVEVMX09VVFBVVF9FRFAgJiYgaW5pdF9oZG1pKSB7DQo+ID4gPiDC
oAkJaWYgKGludGVsX2RkaV9pbml0X2hkbWlfY29ubmVjdG9yKGRpZ19wb3J0KSkNCj4gPiA+IC0J
CQlnb3RvIGVycl9kcF9jb25uZWN0b3JfaW5pdDsNCj4gPiA+ICsJCQlnb3RvIGVycl9oZG1pX2Nv
bm5lY3Rvcl9pbml0Ow0KPiA+ID4gwqAJfQ0KPiA+ID4gwqANCj4gPiA+IMKgCXJldHVybjsNCj4g
PiA+IMKgDQo+ID4gPiArZXJyX2hkbWlfY29ubmVjdG9yX2luaXQ6DQo+ID4gPiArCWlmIChpbml0
X2RwKQ0KPiA+ID4gKwkJaW50ZWxfZGRpX2NsZWFudXBfZHBfY29ubmVjdG9yKGRpZ19wb3J0KTsN
Cj4gPiA+IMKgZXJyX2RwX2Nvbm5lY3Rvcl9pbml0Og0KPiA+ID4gwqAJaWYgKGludGVsX2VuY29k
ZXJfaXNfdGMoZW5jb2RlcikpDQo+ID4gPiDCoAkJaW50ZWxfdGNfcG9ydF9jbGVhbnVwKGRpZ19w
b3J0KTsNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ID4gPiBpbmRleCA4NjEyMzYxNGI3YmFlLi45N2M1NzJlNWE1NzEwIDEwMDY0NA0KPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+IEBAIC03MzQ2
LDYgKzczNDYsMTkgQEAgaW50ZWxfZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0DQo+ID4gPiBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiA+ID4gwqAJcmV0dXJuIGZhbHNlOw0KPiA+ID4g
wqB9DQo+ID4gPiDCoA0KPiA+ID4gK3ZvaWQgaW50ZWxfZHBfY2xlYW51cF9jb25uZWN0b3Ioc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiA+ID4gKmRpZ19wb3J0LA0KPiA+ID4gKwkJCQlzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yDQo+ID4gPiAqY29ubmVjdG9yKQ0KPiA+ID4gK3sNCj4gPiA+ICsJ
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ID4gdG9faW50ZWxfZGlzcGxheShj
b25uZWN0b3IpOw0KPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gJmRpZ19wb3J0
LT5kcDsNCj4gPiA+ICsNCj4gPiA+ICsJaW50ZWxfZGlzcGxheV9wb3dlcl9mbHVzaF93b3JrKGRp
c3BsYXkpOw0KPiA+IA0KPiA+IFdoeSBkbyB5b3UgbmVlZCB0byBoYXZlIHRoaXMgYXMgdGhpcyBp
cyB0YXJnZXRlZCBmb3IgY2xlYW4tdXAgb24NCj4gPiBlcnJvcg0KPiA+IGNhc2UgZHVyaW5nIGlu
aXRpYWxpemF0aW9uIHBoYXNlLiBJIHdvdWxkbid0IGV4cGVjdCBwb3dlciBnZXQvcHV0DQo+ID4g
YXN5bmMNCj4gPiBhdCB0aGF0IHBvaW50Pw0KPiANCj4gaW50ZWxfZWRwX2luaXRfY29ubmVjdG9y
KCkgZG9lcyBBVVggYWNjZXNzZXMgcmVxdWlyZWQgZm9yIGl0cw0KPiBpbml0aWFsaXphdGlvbi4g
VGhhdCBpbiB0dXJuIHRha2VzIHBvd2VyIHJlZmVyZW5jZXMgd2hpY2ggYXJlIHB1dCBpbg0KPiBh
DQo+IGRlZmVycmVkIHdheSwgcHV0dGluZyB0aGUgcmVmZXJlbmNlIHJlcXVpcmluZyB0aGUgZW5j
b2RlciBvYmplY3QuIFRoZQ0KPiBhYm92ZSBjYWxsIGVuc3VyZXMgdGhhdCBhbGwgc3VjaCBwb3dl
ciByZWZlcmVuY2VzIGFyZSBkcm9wcGVkIGFuZCB0aGUNCj4gY3VycmVwc29uZGluZyBwdXQgb3Bl
cmF0aW9uIGlzIG5vdCBjYWxsZWQgYWZ0ZXIgdGhlIGVuY29kZXIgb2JqZWN0IGlzDQo+IGZyZWVk
Lg0KDQpUaGFuayB5b3UgZm9yIHRoZSBleHBsYW5hdGlvbjoNCg0KUmV2aWV3ZWQtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiANCj4gPiANCj4gPiBCUiwN
Cj4gPiBKb3VuaSBIw7ZnYW5kZXINCj4gPiANCj4gPiA+ICsNCj4gPiA+ICsJaW50ZWxfZHBfbXN0
X2VuY29kZXJfY2xlYW51cChkaWdfcG9ydCk7DQo+ID4gPiArCWludGVsX2RwX2F1eF9maW5pKGlu
dGVsX2RwKTsNCj4gPiA+ICsJZHJtX2Nvbm5lY3Rvcl9jbGVhbnVwKCZjb25uZWN0b3ItPmJhc2Up
Ow0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+IMKgdm9pZCBpbnRlbF9kcF9tc3Rfc3VzcGVuZChz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gPiA+IMKgew0KPiA+ID4gwqAJc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiA+ID4gaW5kZXggMjg0OWI5ZWNkYzcxYS4uZjQxNDgwZDI0
NzE0MiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuaA0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5oDQo+ID4gPiBAQCAtNDgsNiArNDgsOSBAQCBpbnRlbF9kcF9xdWV1ZV9tb2Rlc2V0X3JldHJ5
X2Zvcl9saW5rKHN0cnVjdA0KPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+
IMKgCQkJCcKgwqDCoMKgwqAgY29uc3Qgc3RydWN0DQo+ID4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+
ID4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gPiDCoGJvb2wgaW50ZWxfZHBfaW5pdF9jb25uZWN0b3Io
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiA+ID4gKmRpZ19wb3J0LA0KPiA+ID4gwqAJCQnC
oMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ID4gPiAqaW50ZWxfY29ubmVjdG9yKTsN
Cj4gPiA+ICt2b2lkIGludGVsX2RwX2NsZWFudXBfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQNCj4gPiA+ICpkaWdfcG9ydCwNCj4gPiA+ICsJCQkJc3RydWN0IGludGVsX2Nvbm5l
Y3Rvcg0KPiA+ID4gKmNvbm5lY3Rvcik7DQo+ID4gPiArDQo+ID4gPiDCoHZvaWQgaW50ZWxfZHBf
Y29ubmVjdG9yX3N5bmNfc3RhdGUoc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiA+ID4gKmNvbm5l
Y3RvciwNCj4gPiA+IMKgCQkJCcKgwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
PiA+ICpjcnRjX3N0YXRlKTsNCj4gPiA+IMKgdm9pZCBpbnRlbF9kcF9zZXRfbGlua19wYXJhbXMo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiANCg0K
