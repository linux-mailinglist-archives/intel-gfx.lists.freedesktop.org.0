Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJVyGuHm4WmKzgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 09:53:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C19E9418329
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 09:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD3810E09D;
	Fri, 17 Apr 2026 07:53:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SF0eRuHZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30B2910E09D;
 Fri, 17 Apr 2026 07:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776412382; x=1807948382;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lqQX2YBgqTxVcYYVBV/Pw7jnqi6fGvtxF0pCyH1lT/c=;
 b=SF0eRuHZXhFUwhpO5HgtUbuhSg6RbxiaIYNB+hdX418GW3L/ef9gRgyg
 9yyu01JbeOToBuc/wVCyBCmCu+CCwIOT+C0d63rRKRZfzgbl9AbdxUwHc
 npR6qmkBGN6WKpeneY1ggBiIGuRVIWUHhfnXIsFnhHaDQFTU3vhK6Sshp
 K2CHjsnEGOEzXtQRmnezKu4aWrLFEpAxDtZQU9pMeM2ZvLoaATo1WLZrH
 4RWoxkValUwzh4UjNjY+jOYxde0IC9gVd7Xn9L0qFOlAuL6nOaqEV5//W
 GueOltrSdE9T+lZQULHHE7eLpCMZnOKtKFhWY31VuGAoAsrQBB4hSacMp w==;
X-CSE-ConnectionGUID: AFW1ICvsR1iWNrAmaIyk1g==
X-CSE-MsgGUID: B2bf17QNSWOHLDffd3xUQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="88125921"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="88125921"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 00:53:02 -0700
X-CSE-ConnectionGUID: XcL8YiSVSF6H5KBSi6OTGQ==
X-CSE-MsgGUID: isI50IPeQsmDypNTRoyvUw==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 00:53:02 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 00:53:01 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 17 Apr 2026 00:53:01 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.46) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 00:52:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a4n7aPFoi1O5nOyB7xrXS0ThBkgSIPYWZVZxrjob7PiyUxDh46wUSALQBvu8SfR0bxb4llMEhmYty5AuU0rgbEvoEs0JTUAZKZiMNrirszEttwAjM6ThbHMy/cl+7IvVOsMy0sui7+W9eqwdDX0BdgBU066pmSCvyoP9Ik7ozTX+1QZfy78HTn55nprfio4Pu2YNc28GMb4pBvkwlm9lE4/iH23N5K376xW0HVUkBEjnXj6PDlInYejw8UWhUOqVA1Vkw3jIyiG7Y90wTfJFV6ZO5AFcxiuTF8qb70qh3zmRlw84YkFe/8HivP09cD/iaeMP03cc95aXwp19We6yYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lqQX2YBgqTxVcYYVBV/Pw7jnqi6fGvtxF0pCyH1lT/c=;
 b=h9rYO8Rob2NLaGQ0/Hqmn/73G5GLM+Kd2y+CQKGXH1gNQEH7Qq9m7voYqfwfkW4AFFY7gRgtJmS3dqMm2ec/nmlht7W2skke8EzxM1UFCvvDmGHOmpivGestw/7m18vC7WWczM29fQFGNW+3aju90Vpo7D8SPEPgh8nZwjJ5C6ksXrFwncYFu5ez1mduJuTi67XpQ6hFNR3De9D28qWR+EmFkRtty8e5ouUM8MYKar2yfFQSSBsHfwFtuHpS34dJYS3dWyccbgEsDYhaO7FdLnF31prdy6wvgP0qBgurvidv5woLoXvejTPJz2Bjjsap3XkAMTrOLYfrDLp1hUcmGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH0PR11MB7470.namprd11.prod.outlook.com
 (2603:10b6:510:288::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Fri, 17 Apr
 2026 07:52:56 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d%2]) with mapi id 15.20.9818.023; Fri, 17 Apr 2026
 07:52:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Disable PSR2 on Xiaomi Book Pro 14 2026 as
 a quirk
Thread-Topic: [PATCH] drm/i915/psr: Disable PSR2 on Xiaomi Book Pro 14 2026 as
 a quirk
Thread-Index: AQHcziW3RmMQX3uMtEm5UPUE1JA3+bXi4fcg
Date: Fri, 17 Apr 2026 07:52:56 +0000
Message-ID: <DS4PPF69154114F8D80B3AC128F899CBB87EF202@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260417044926.750354-1-jouni.hogander@intel.com>
In-Reply-To: <20260417044926.750354-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH0PR11MB7470:EE_
x-ms-office365-filtering-correlation-id: 6e890712-eb8b-4000-f8df-08de9c565654
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: +rOXJ4uAdHtXsN2c7YrnDSgZVroF2n9C76fd480BMlhKvkX/JuvPq/FFihct762KtTHSP7VN2HuqF/z6YvLQ6mjoKjQ+IHORcJ+7528VYN6w/ztALFd0VAY1iB9bXJJ0/SEwSJ7MGXXyl3MzAPJes2WQgkpduPwAA9QaZ4y227qlf9iAORA2LaKfR45kNGMmi3zmEmzFAGQohhPoKqFWhrldnYrNwhGpEJQiTJmUO7YseVJnRhS2Yv9lnn/M57EDFZZHYY7dkQN7GRjzn89ZoHUwbz0ISVeTDQcg/GSnfS0EJV9Hg9LSjRM0g/YLu6FTpZdmJS1LeIuLeuLDxKotBRe53x5IbPIYGOMsJqQbZm7V+ZV/euTqZA+N/cN0WulL/H+glOuIxrtXZpQtUyjbqaT68zgDxW+yi2p17Gwry9jIHDNn9i39p7FkN6puLO3t/RODeEtC1Bzi1eNRkErf02mUQB8S/FiQgY3mnKPGufWuyxhdC+U/YLYn3rGs/P7KiabLR4KoTxNDi4xD7LSrtpnWFn78tvW7MuRKdnev1fwHJOCOzspCiblpmSuvKoh6PRgFqD/dUPcw9gDV5arDKPXIcsz5UM7wr4Ymc3T2iDApnwQBpBGqrGNMjoJw2Bz/Y614TJQfcEB7aC5gjuIa7yhViBIqNOlsfEf50Jq+XpBc1vf4OTnb6efQcYXzq1e5Boaj88CjBAp7lx9C1FU3ZHLAx6rm1lTMANCyTka+kUOaTDobddFasEnigwK9KvRK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHlwU1liUWFKRVJjR2dnK2pvWVdlQy9yWmlhRkszb0VRWkhBMExWQWJPeFhq?=
 =?utf-8?B?MENjemxmV2RpcHFzQXIwK1N4WDcreGs1NVFJc3FPTzFXQ0l3cFUzR1lwSlF1?=
 =?utf-8?B?OWgxZFJZNm16NUp4ZSt0bGNrTmxWZ3JSZGp1U1d5RTRla3pVR2ovbTBGdnNF?=
 =?utf-8?B?QlB2NW0xRVN6R3JjSkRHOVYwbGViN3RZLzFyZlY3Y3RiWmxpa1NEL3R0YlFI?=
 =?utf-8?B?ZHhUU1p1aTlOb0pGNFhTQmFObHlLNWJSMTlURkN6WU1PZDJIYTRkVmFvS0RW?=
 =?utf-8?B?SjhCYS9CWmRDemdQejAxbHNkdGpjSzFOUjJXQ2liWUJ3NW5nSzRBYi9FeEVR?=
 =?utf-8?B?WTNBdjRmaXVlSHFlWTc1ZkpjQnFjVTdDa0RxcDVwcUtsbGVwR1lna25xcGJZ?=
 =?utf-8?B?TWJITjl3dlRVT3I5Q3I4MW1qS0piYUsxSTFld1V2dENIYitib2tVWGU1eFZl?=
 =?utf-8?B?TFJvRDJjYjAwdVR5QTZrWER2ZG9EVzcvMzVsZERzbE4remZhdVJFMzBBczBX?=
 =?utf-8?B?Z043d2FleXd3czFobGs5S2RmQ0treXRYWVFZR01PZzhXbXQyMS9ZM0VvbFQ0?=
 =?utf-8?B?a0cvbllvbGdNRTh3bitNeGJrQ0o4emNvWnJ4SVhwc01qbmxYODRVUE1mbmN5?=
 =?utf-8?B?ak4zV3k5VDFYR1hEa2oyNzBrUjJ5UDNSY3htMld4RnpFZWJYS3NJd0N2VkZk?=
 =?utf-8?B?RVZjR2pxOTI3MUlvaVJ3b1lrZVAwNFZMdkJkVzltd0JOOTQ4K0NqMGJQRjZn?=
 =?utf-8?B?MFc3UDdhMWdNcU1QdVVkcXpZTVB2YkZlUHNyOHRrS3Y5WXdnMW9lTFpMa1hB?=
 =?utf-8?B?cDJVNHlvY2QzQzVvTE9aVHl2MTVRaDJud1QvNW1DTURQU1dwbExUcENmSE54?=
 =?utf-8?B?Z0NEc1BraHJZNmtqcnBBRGZNdk5XczVITzdYS2ZMT3p1Y3pxMFVxMnkveWZo?=
 =?utf-8?B?ZCtjQ28yTzFKOTlBbGQyRWttTUNqdnNUY2ozWmpGSndScE0wV3NUeDN1M3hh?=
 =?utf-8?B?c3pyNGJNT3IxMitKZkp1dTdkNDdNWC9INldySGxXYndMWkFzcmQ3K1podnBz?=
 =?utf-8?B?MjZXdXVzUlFwelloNmplVnBpVHlRSTJjNGV6QlNVV0s3Ukt2TlJxUGNQV1RR?=
 =?utf-8?B?TVBsbkoxM3QxZXFRMXF2VWxUOHIrektHOEQ3MmhsdDVaWlh5MDdyWkZhcDZk?=
 =?utf-8?B?VDZHVThaaEgzbUVoamVWczFOSHdGSDVPRlVIblkrUm94MHJVWms0VWJ5aWMr?=
 =?utf-8?B?K284YVdMRWJUQlp0d1M3YUpuelhUZUMzQlhNT1dobGJJTEVNQytPaW9CaHhD?=
 =?utf-8?B?L2d1aXRUWUxsaXRZZU1IREVuZ0V6M0tiMXdYRW5DbkVsSnZFK3dOU2VsQ0My?=
 =?utf-8?B?aVRHcnQ0cVh5a3JPN2lTdEdLOXdzV3YzN2wzR2tzTWEvdlFFYXNFenoyOGJF?=
 =?utf-8?B?TTYzRDFOS2d4OUVuazB2UVBWT3NpOW5QWnhDclFFMVhNc3pza2RZQlRzTmhO?=
 =?utf-8?B?QzVKa2J1dTBEc1FGdkFOM0JhVnhnR1pWeWhHWnNrU1N2QmdhUHpOMmdJLzB3?=
 =?utf-8?B?UlN0OXBKbGVoRlgycHp6aWFNZFl4V2ZkcDF5UE9QNktkOEdmc28wN0xXb3hX?=
 =?utf-8?B?dHpNTWpYUG5NeHdHZStXVWlNUlFxWlRmKzRJWERTaWxaVVpJNXlFMGRyWXRN?=
 =?utf-8?B?UEpsV0M4cHJrNVZVdCtORjNQSEJhM1RocmNWZUg1akxFRmI4bVFQRzJFYTds?=
 =?utf-8?B?a1NLSUhJajltd0NtKzRGaytacFZnT0lIbU1KbnR3aG9HUEpaN0NvV3hISTlL?=
 =?utf-8?B?M3MvakxpTExzbDdabnEzUXV6U2Niclp1bHVKT0Y5S3hhcTVaVVZvUmpBZzB1?=
 =?utf-8?B?SXMxRFRpUVVuVkYydEhkaE5vb0hGdms3OTVBRzBBd05ZOFROSFMyMS9QcG04?=
 =?utf-8?B?YURPQW84blpFbkI0ZFJTR0NLWFl3ZURXRzZ4Y3BpWmtGSnMvYTNUS3NFNHVV?=
 =?utf-8?B?M3ZsdllLLzdORHI0V3htWjlLSzVGbFhXcDFlSFlvQ2VEbTRYMnVhNEFYb0dF?=
 =?utf-8?B?WXRRVG50aVI2eVpSYUgySENva0Q0RWVha0RHMVNCTUpNQXpZNW0wOWJueTJq?=
 =?utf-8?B?bWhiUzE5UzhBNmdlYmtTaFN3S2MzWDZvMDlFOERyclZzS04vVzNkUUJ0MjJa?=
 =?utf-8?B?SVB3aGlwZUlyZkNmaktCRlFPSk5VK2JtZ3ZmNlZmWGlnRll1RWFDakZhd28y?=
 =?utf-8?B?ZnVuWWhzRWxBM1IyTXcweXZvWkpjM1NvbGUyUzRWS0FYWVdXSEp5aUgxSFho?=
 =?utf-8?Q?X1VjyyZntJ9OO+56n0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UBmGSAvaP6oLGXcceJIuZSgGCiq/2hoOidhOUVzM7LBoDRbTiyD2zvtVZmRxThssOzNBzwE1e471QWsDw0/dZXIpcsZr+qJ6UYsTdiMLFr67ZXkMzrguy3J14ET+d3HCBUInIhqwUtUwaoyve2Atz4VYT9G26SQ8draoa2/LMqAtlQiqr6v1PFI/nCAoG1fG5kBHaljrIWPZRcVLRwvEQT3jtUIIa1J7c2VSAQbWpevlwMe9eex1DSxV+cc3z34Ql7P/OXB4yy4aY2nonJVUALSp0u9eKwigsxdhWhGMUo3b7DMwrJK9GCwxCfSJly7lVlu/rJ1zQ81EzjfgInNbmA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e890712-eb8b-4000-f8df-08de9c565654
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 07:52:56.2341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lhIvxEA4aO0PcQfbH9C58mWnQrStQ59/oXDGmGnWXS4a4Wu7ngrRUde5dCExvPh5/hP5xdIO0570/u3ZKdbP4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7470
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C19E9418329
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaSBIw7ZnYW5k
ZXINCj4gU2VudDogRnJpZGF5LCAxNyBBcHJpbCAyMDI2IDcuNDkNCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6
IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBEaXNhYmxlIFBTUjIgb24gWGlhb21pIEJvb2sgUHJvIDE0
IDIwMjYgYXMgYSBxdWlyaw0KPiANCj4gQWRkIG5ldyBxdWlyayAoUVVJUktfRElTQUJMRV9QU1Iy
KSBmb3IgZGlzYWJsaW5nIFBTUjIgYXMgYSBxdWlyayBmb3IgcHJvYmxlbWF0aWMgc2V0dXBzLiBB
cHBseSB0aGlzIG5ld2x5IGFkZGVkIHF1aXJrIG9uDQo+IFhpYW9taSBCb29rIFBybyAxNCAyMDI2
Lg0KPiANCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL3hlL2tl
cm5lbC8tL3dvcmtfaXRlbXMvNzY3Nw0KDQpMR1RNLA0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xh
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICB8IDYgKysrKysrDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jIHwgOSArKysrKysrKysgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmggfCAxICsNCj4gIDMgZmlsZXMgY2hhbmdl
ZCwgMTYgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IGluZGV4IGI0Y2E1ODQzZDA5OC4uMTliM2I5ZDUyZWI5IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTY5NSw2ICs2OTUs
MTIgQEAgc3RhdGljIHZvaWQgX3Bzcl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY28NCj4gDQo+ICAJY29ubmVjdG9yLT5kcC5wc3Jf
Y2Fwcy5zeW5jX2xhdGVuY3kgPSBpbnRlbF9kcF9nZXRfc2lua19zeW5jX2xhdGVuY3koaW50ZWxf
ZHApOw0KPiANCj4gKwlpZiAoaW50ZWxfaGFzX3F1aXJrKGRpc3BsYXksIFFVSVJLX0RJU0FCTEVf
UFNSMikpIHsNCj4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiArCQkJICAgICJQU1Iy
IHN1cHBvcnQgbm90IGN1cnJlbnRseSBhdmFpbGFibGUgZm9yIHRoaXMgc2V0dXBcbiIpOw0KPiAr
CQlyZXR1cm47DQo+ICsJfQ0KPiArDQo+ICAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDkg
JiYNCj4gIAkgICAgY29ubmVjdG9yLT5kcC5wc3JfY2Fwcy5kcGNkWzBdID49IERQX1BTUjJfV0lU
SF9ZX0NPT1JEX0lTX1NVUFBPUlRFRCkgew0KPiAgCQlib29sIHlfcmVxID0gY29ubmVjdG9yLT5k
cC5wc3JfY2Fwcy5kcGNkWzFdICYgZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcXVpcmtzLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3F1aXJrcy5jDQo+IGluZGV4IDg4M2YyOTdkNGI4My4uMjI5ZTAwMjVhMDZjIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMNCj4gQEAgLTk0
LDYgKzk0LDEyIEBAIHN0YXRpYyB2b2lkIHF1aXJrX2Rpc2FibGVfZWRwX3BhbmVsX3JlcGxheShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWRybV9pbmZvKGRpc3BsYXktPmRybSwgIkFw
cGx5aW5nIGRpc2FibGUgUGFuZWwgUmVwbGF5IHF1aXJrXG4iKTsgIH0NCj4gDQo+ICtzdGF0aWMg
dm9pZCBxdWlya19kaXNhYmxlX3BzcjIoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpIHsN
Cj4gKwlpbnRlbF9zZXRfcXVpcmsoZGlzcGxheSwgUVVJUktfRElTQUJMRV9QU1IyKTsNCj4gKwlk
cm1faW5mbyhkaXNwbGF5LT5kcm0sICJBcHBseWluZyBkaXNhYmxlIFBTUjIgcXVpcmtcbiIpOyB9
DQo+ICsNCj4gIHN0cnVjdCBpbnRlbF9xdWlyayB7DQo+ICAJaW50IGRldmljZTsNCj4gIAlpbnQg
c3Vic3lzdGVtX3ZlbmRvcjsNCj4gQEAgLTI1MCw2ICsyNTYsOSBAQCBzdGF0aWMgc3RydWN0IGlu
dGVsX3F1aXJrIGludGVsX3F1aXJrc1tdID0gew0KPiANCj4gIAkvKiBEZWxsIFhQUyAxMyA3Mzkw
IDItaW4tMSAqLw0KPiAgCXsgMHg4YTUyLCAweDEwMjgsIDB4MDhiMCwgcXVpcmtfZWRwX2xpbWl0
X3JhdGVfaGJyMiB9LA0KPiArDQo+ICsJLyogWGlhb21pIEJvb2sgUHJvIDE0IDIwMjYgKi8NCj4g
Kwl7IDB4YjA4MSwgMHgxZDcyLCAweDI0MjQsIHF1aXJrX2Rpc2FibGVfcHNyMiB9LA0KPiAgfTsN
Cj4gDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RwY2RfcXVpcmsgaW50ZWxfZHBjZF9x
dWlya3NbXSA9IHsgZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcXVpcmtzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJr
cy5oDQo+IGluZGV4IDgzMjE0ZWI5NGIwYy4uOTcwYTRmZTUyZmFmIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5oDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmgNCj4gQEAgLTIyLDYgKzIyLDcg
QEAgZW51bSBpbnRlbF9xdWlya19pZCB7DQo+ICAJUVVJUktfRldfU1lOQ19MRU4sDQo+ICAJUVVJ
UktfRURQX0xJTUlUX1JBVEVfSEJSMiwNCj4gIAlRVUlSS19ESVNBQkxFX0VEUF9QQU5FTF9SRVBM
QVksDQo+ICsJUVVJUktfRElTQUJMRV9QU1IyLA0KPiAgfTsNCj4gDQo+ICB2b2lkIGludGVsX2lu
aXRfcXVpcmtzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gLS0NCj4gMi40My4w
DQoNCg==
