Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGFtCN8ADGoUTgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:19:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 615E5577E7B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:19:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E214510EA78;
	Tue, 19 May 2026 06:19:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q/Df8Pho";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1475010EA78;
 Tue, 19 May 2026 06:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779171548; x=1810707548;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hGZZeH4JnZ1Y7dKZgS9U2xwJG4XUCRksrXo4J/8lohk=;
 b=Q/Df8PhoFUOLRZ3uQX2pN6Xc+IJFkLIgkgx4Chr7P4cdAx3ITkto/hYy
 civGDW1WdvzUZMS2BV5bk5ZhcKCluFrd7pYfhP0LdMzP6Vbk97TL7tZ0I
 k4TNJCFh0HhU0IDMNTJS7QkmqR0HglTCPfhGS/15vSuNLZYWLhVZsXX/m
 e4mjU+Frns4pqNOFT2YOSDiG3h9heAk1nKCzrgMR573xA35o80n/bvjVo
 GEthPqwvsijTXeMIEmxBJzoM3lise5FcgaIWaVzDOS8f/Hldx6rcm/b77
 KN4omuQ9V+Q1BXxSsnvpA0UjuF5qs11KeSy3sPm2JW5qeTxVnm3Z0JTTa g==;
X-CSE-ConnectionGUID: OZqgrB4SRt+MJ4PmF8CSRw==
X-CSE-MsgGUID: /RXYwh+jQiyOfzdHW9SNPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="83655580"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="83655580"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:19:06 -0700
X-CSE-ConnectionGUID: 3KWjHHs5QeWPOy9ygOIrQQ==
X-CSE-MsgGUID: zi1ij0G1S1mjsLpOciYKMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="241501649"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:19:05 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:19:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 23:19:04 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.40) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:19:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IMy3hqsjfVR7DvgflkG7dyECcLDD6Be9SibZAOMHowDM+2bS9uK3UyZEn8tEbXaJ4ky0P+J0vH9SF1wSU4wPo9vX3IKM4nVuXXoGLxVl/woTOdlHoYVi9/BZHlncq96YeEytAd1jZUETKxbPzWo/0nSi06hWCtKQBQH0JQ1mY3uFqEpleHFbXEU7NLVbzjbjjoys/41zQnORS/KJeLUu2ZyrndE9R/TtcqiV4N65heg3xPyHXSYk7LhvnhSarVJtw0b0cmlTZ4omwArnjMgySOWzs0FqGnRRf93WVeD+WBBfGL1+3MkA6fZMOQWo8xvlwyn8jZV6zLHXbnhZo91Z2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hGZZeH4JnZ1Y7dKZgS9U2xwJG4XUCRksrXo4J/8lohk=;
 b=gef2Mu5yt48SL7YJWAGQBC4ofMyUOD1GGhV7NZxcmFJXIe5TuQpX568y8YKAmZw/yjqbeBAQ0kci8LGpvD2Jpsz1MBW9dP7sFY4oZ1Lt+/IXHLvpk5fMMgdBbthy07/Jd6bYO6bD+Gqu77NdSPTZ7+ddu9vE27Oyzro8bpw4rO3SIY5UUbB/r5jNbA8lNXBMR2tuWYO/9Fmb391/A5R8SvRk/NeNDhTHwzym8lhGkfzssxpeOgN2TCwcHT9O9wP+3MrV0JOb14sHaPkmg7qGgjcCU48sywEiaN3rT1qQdezfMjKOaHLvBRYXqfRU9GRhkHynXXpFNNhk89LKog+I7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS7PR11MB6175.namprd11.prod.outlook.com
 (2603:10b6:8:99::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Tue, 19 May
 2026 06:18:54 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 06:18:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 20/31] drm/i915/bios: shrink all Snps's VS/PE tables
Thread-Topic: [PATCH v3 20/31] drm/i915/bios: shrink all Snps's VS/PE tables
Thread-Index: AQHc3cFezcTZpiWAcUCblE/PORX0ZbYU8xFg
Date: Tue, 19 May 2026 06:18:54 +0000
Message-ID: <DM3PPF208195D8DC6F4AA42545DCCCB2EE0E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-21-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-21-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS7PR11MB6175:EE_
x-ms-office365-filtering-correlation-id: 67ddec5f-1df0-46d8-64d5-08deb56e80b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003|4143699003|3023799003|11063799003;
x-microsoft-antispam-message-info: tct8ZZI73HkMbYiaBXKLVJ37LMTzt/R/wY9rE9OMp+O7GKZ3AmxoJDhrv4SJwsUh4TFvlGAxGGDfqt4f7wAEaxsFCar1nLwcEHVAhzF9ZJdBYFR/P7RMaPs4rRwTR/h7vHF1+9eXiykfbX76wMjSC2ftI9ST7KowTWsxmKBMTfDoKTpBcxzPBJdgvZikg2VKbYcQ7rORNUL5j09NG2HQJ3yzE3pP20vBF8h80XlFJCpc2RyuZbJhgV35De4FyLbO1efjyAM6czDfv77nSMaQ71p0ari8vJnCK3BGfpeB9wOyHqX//XEly/Do9LTUA/0D09Mkh4DEMNTy8nfGDQXIJaytAhvRryPUsw7E1+syhcQueACn72mCxvs1QznV1SuO6R56kqN1NFr30GZqGceTqwhFWNe1CVSrRK56+h0m+lGx5D6DvwJUKhXV/RE91HTehOPzgqbiBLA5dYrUH64fE90Cg0d6yaV0US5wkbLAPCI7IvQpNYb04NZ2o0XDupjYGykG9Tkyx4CBoncvKZ5YARmEfWOQz56kfUXttYbULTIALR9hB78ncHlGtUpv6tG8ynJCnY1Ca7wwjCPFSSnIJ9JEGOUZba5AO499mePGqGj9P4EpQDXBUM/gzgmSBLzApco/1pHNidhp/lz8Cv8UBXviP35ZK1O5w6UecuIhiFe5egqjlUo8DIMQ7ccpan6JfeGK2iU9bDCHnYRhmSJRDjYWwXjwrQTvjU+dX+C8fs5Z+fupAY/vv3bn45CBvvFb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003)(4143699003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDNSUHcyV044U0VyVzFIQkQ5VzN4V2JaUW1JWmZoRXFxVGx5anpmcjN3MFpG?=
 =?utf-8?B?MFpjOHEzQWpGeFZ5Q21aNkw5ZFhxaUZBQ3pBZCt0UFhXWVBKZHE4YzVHWWRt?=
 =?utf-8?B?bHpFMUhpMmVzcXIxb2h2WHBPaEhBSUdWby81V2htbE9TN2VESmFGc24vdzdB?=
 =?utf-8?B?cGZxRmFYNys1ZVpFdzM0YklmUGNCMWprRzZ2QzZJcWZXRUp4TnBOblFncnhT?=
 =?utf-8?B?a2hlZTNabFg1NjlIYXV2NmJVSXVETFA4aFMyRTlTM0pnNUZJS0lvSjNDcFJY?=
 =?utf-8?B?WGUwdkV6di9XbmxqYk1WTFZvQmxiK2FzVDBQZitvb1dTOHRGQm9DdlBTYnpo?=
 =?utf-8?B?ZnBrN3lGdmZQajhXNkZ5R045MWtZWkRRMjErTzhJVGdoT01Db2FuZW1QNXhO?=
 =?utf-8?B?OHBGTGRKN0dML2NNV1ZZTkljVEZFZllybzUzUUJSSTlNcW1CZmZ0RENGN3lt?=
 =?utf-8?B?aUdwVnR5N01Rb25vb3VCRGtWS1ZacHlNQXJZcTVHc2I1VXgwZ0dqNTZqMHJM?=
 =?utf-8?B?WnUrMmpEZ0NLQXg2ZFFyRHVjMjJFRTkzeWZOWkFqWGIwZ0ZMbzVzdGt1V0Ns?=
 =?utf-8?B?TDBIYjg3NHNjWG9rK2I1a1hnRG4weWFZbVBGcnBuMytQLzhGOGwvSWFBODRB?=
 =?utf-8?B?cWhCMDJyYjN0ZGxnb3d6bG5yc3dSTEk1NEREZ0JJYjhBOVc3NlU2Z21yOFRZ?=
 =?utf-8?B?STl4Y1QzeDlMZjF6ejdtMVB0dFFnV09aUFBBWFVNRVZjNUFub3paNzZ2YjFX?=
 =?utf-8?B?MExHQnlpaTVGWFEweUtXSk9EWmVSTkJpT0c5U3JWQTVyV0tnWXVYUk5vNjdn?=
 =?utf-8?B?bVlWOWNQdEgwRkdZSk00SmlCQ3g4STRKUlNkMnZjcDk3VlVCWFIzOElZRk5E?=
 =?utf-8?B?WGxMQW1TdURlQVYvazFMLytUcUZCVDNybTRGOUx2WXo2ZHZMcVVWZ3VJTFcy?=
 =?utf-8?B?c3ZkSGJBdjVIVFpUZU9DTzNKT29yWS8way9sNFB6UWVYY1ZrQ1VUcXlqeGhG?=
 =?utf-8?B?Tkk3bnNxcjF2NGZSQjNuYUcwUzRKdFVkR1RxL1lLVCtVaGp4QzkvUzlCUUdx?=
 =?utf-8?B?M1IzM2FkOXBUdUx5eEZ6YVc0QU9lR1RQdFltd3NUT25KTjdpR2NvSVFMcjBG?=
 =?utf-8?B?dHdmMi9RRkFLVGNiamIrdzdIR0lXV0V1alJhTnArQXl5NjFNTlN0eXVlaGdL?=
 =?utf-8?B?Y0tLSmNDTzREaVZTWnBKQ1BETmE5Sk9ZR1FnYVFFMUlFVFdqOHFaYkpQQU5w?=
 =?utf-8?B?U3Z0YnBieUlzMlJJeDhiSkZ4cTFsSk43aCtBbFVuY09TdVRUa3ovL05MaG9I?=
 =?utf-8?B?NklhMU5uR0RzOXRaeVdIS0pYSVdZSzhaVElZY2syZjV2QlRYRDYzWWppT3dX?=
 =?utf-8?B?R29ZZmUzTVp5TEwwY1RaWEZ1NkVJMm92WTBXZGhjbHprT05CS1VmSDJUNHBl?=
 =?utf-8?B?a1RpZ2lOOXBXSWJOeWlMaUg2S2s1YnFIVDFIbmxteTNUSW5YVCtSanplZS95?=
 =?utf-8?B?ZFl1cHIrbG5Zdmk5L1lzbTdMWXRhalIrUFROYkRzRDNselFJS3ZjK21CZXV3?=
 =?utf-8?B?Zm96RUdwOERjSi93aTdCeS8wYWEvNDN0VWlna0V0b01Dd29PWWZqanZodmpz?=
 =?utf-8?B?dWpybi9PcVVKUExzRmFYSXZ1QXV4SlZ4S3RuWkhrRTZOYXlnbUZwSGtUZ3BK?=
 =?utf-8?B?WlUzV2pGNFZ1MXBiTDBUZlcyYjJYdWhybWRIbjQ1dnZSWm1KK0cvOWhtZmp2?=
 =?utf-8?B?WGN3NFhSNS9QUEYyek5iRVZabEdNalV1V0ZqQVFPZXpzeURRSXN6bDEyeld1?=
 =?utf-8?B?VkFjZlBEL3JyLzBZVVk0UEQ1UElzaGUyc0IzTUNhR2R3MFhOUnJOekp3d0Rj?=
 =?utf-8?B?dHRyYjg3S25zdnJnZVh5R1Ird3l6TFgyZ1pTcnJ2QmZmemhsQWVobFUxdGsy?=
 =?utf-8?B?aFRjbkJGOEFYcFlGV21Vdm9VcnNYY3JRUkQ0TkhJTUxYMEtVRWdSLzlDTXBN?=
 =?utf-8?B?aHo4Zk1XMlhrTHljL3V2T284NVB3YmFmMTJGZ0VNek1KSzJrOVp2UFZlQ1hl?=
 =?utf-8?B?OXhRajViUENBZXhBc0w4SEtsam5DOEp6T3J4VmwvK2FnU3VpbHVLdTJWNytW?=
 =?utf-8?B?VFJlTUVXQkg3TkpZbzVRR01yRTArRjJnK0I4YkVhbEZwY2RaVlJ6UWJtZlp4?=
 =?utf-8?B?cWpiR3FjdzlBem4xZlNRL0hWOEkrYVlia3BQR3dGclJkcDdkdlF5SFFQSERz?=
 =?utf-8?B?SnN6Y3NzenBnNDZDWFlUaks2Z0pFT1l1RFFmKzhJb3hEeVZjd3FobnEvUEZm?=
 =?utf-8?B?UHoyREthVWY0QTM4TXhDMnZiamVLUkR3d3pzYVIvUFZhRVQ5ZXh0Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: sigI5Bdna/bxRB9vDv5F2fQKnscmd3FbSEgAWdL5Kj8Q9rWcQlveQZyVbhlNa034HYOt/h3CCNPbkMCgUa2oPd2C/ySZHYkWdrA64QpVD+MryU12AOOlQ3s7FRBjzqPsGletaaH7J83+r7qJGMqeFIAVLc+pJTGYvirspttWOMVquBOWcH/7XoZPbxndgRSY3lffbmnpDaQSb0q2/aF0fuBHFnku+1o66t31buMWxnQpA7uTDIHs9Gi+wuJCWuNCoNRbBglo+R7nJEDJiLyDAg/pyo265LpLB4lx2T4ii1AhCiNPntmJBuE/XSx3Jbpr+pqgARVM3earIf713GLYag==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67ddec5f-1df0-46d8-64d5-08deb56e80b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 06:18:54.3677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ufe7/Oxri23QKGiSx5Y4hQAMdjv96cn4g1+678Tc+iRJ6Dhh5q6g4iS77xPFIEzlIDwmn+3tRb1j9n43rHCweA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6175
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 615E5577E7B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMjAvMzFdIGRybS9pOTE1L2Jpb3M6IHNocmluayBhbGwgU25w
cydzIFZTL1BFIHRhYmxlcw0KPiANCj4gRWFjaCB2YWx1ZSBwcmVzZW50IGluIFNucHMncyBWUy9Q
RS1PIHRhYmxlIGlzIHN0b3JlZCBvbiB1MzIuIEluIG9yZGVyIHRvIG1hdGNoDQo+IHZhbHVlcycg
c2l6ZSB0aGlzIGNhdXNlcyBkZzJfc25wc19waHlfYnVmX3RyYW5zIHRvIGluY3JlYXNlIGl0J3Mg
c2l6ZS4NCj4gDQo+IE5ldmVydGhlbGVzcywgdGhlIGFjdHVhbCB2YWx1ZSBmcm9tIGVhY2ggU25w
cydzIFZTL1BFLU8gdGFibGUgaXMgZnVsbHkgZW5jb2RlZA0KPiBpbiB0aGUgbG93ZXN0IGJ5dGUu
IEV4dHJhY3QgdGhlIGxvd2VzdCBieXRlIGJ5IGNhc3RpbmcgdG8gdTggYW5kIHVzaW5nIGl0IGFz
DQo+IGRlcGFyc2VkIHZhbHVlLiBUaGlzIHdheSB0aGVyZSBpcyBubyBuZWVkIHRvIGluZmxhdGUg
ZGVmYXVsdCB0YWJsZXMuDQoNClNhbWUgdGhpbmcgaGVyZSBzcXVhc2ggcGF0Y2hlcyAxOSwgMjAN
Cg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHF
giBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgICAgICAgfCA2ICsrKy0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmggfCA2ICsr
Ky0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBp
bmRleCAyZDU1Njg4OTMxNmYwLi5jNmE1MzMxOTgwOWVlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAtMjIwMiw5ICsyMjAyLDkgQEAgcGFy
c2VfdnN3aW5nX3ByZWVtcGhfc25wcyh1bmlvbg0KPiBpbnRlbF9kZGlfYnVmX3RyYW5zX2VudHJ5
ICoqYnVmc19tdHJ4LA0KPiAgCQkJdmFscyA9ICZ0YWJsZXNbb2Zmc2V0XTsNCj4gDQo+ICAJCQll
bnRyeSA9ICZidWZzX210cnhbaWR4XVtyb3ddOw0KPiAtCQkJZW50cnktPnNucHMudnN3aW5nID0g
dmFsc1swXTsNCj4gLQkJCWVudHJ5LT5zbnBzLnByZV9jdXJzb3IgPSB2YWxzWzFdOw0KPiAtCQkJ
ZW50cnktPnNucHMucG9zdF9jdXJzb3IgPSB2YWxzWzJdOw0KPiArCQkJZW50cnktPnNucHMudnN3
aW5nID0gKHU4KSB2YWxzWzBdOw0KPiArCQkJZW50cnktPnNucHMucHJlX2N1cnNvciA9ICh1OCkg
dmFsc1sxXTsNCj4gKwkJCWVudHJ5LT5zbnBzLnBvc3RfY3Vyc29yID0gKHU4KSB2YWxzWzJdOw0K
PiANCj4gIAkJCW9mZnNldCArPSBibG9jay0+bnVtX2NvbHVtbnM7DQo+ICAJCX0NCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5o
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgN
Cj4gaW5kZXggMWI0OGQ2NjE4OWVkZS4uMzBmYWZlZWFmNjJmMiAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4gQEAg
LTQ1LDkgKzQ1LDkgQEAgc3RydWN0IHRnbF9ka2xfcGh5X2RkaV9idWZfdHJhbnMgeyAgfTsNCj4g
DQo+ICBzdHJ1Y3QgZGcyX3NucHNfcGh5X2J1Zl90cmFucyB7DQo+IC0JdTMyIHZzd2luZzsNCj4g
LQl1MzIgcHJlX2N1cnNvcjsNCj4gLQl1MzIgcG9zdF9jdXJzb3I7DQo+ICsJdTggdnN3aW5nOw0K
PiArCXU4IHByZV9jdXJzb3I7DQo+ICsJdTggcG9zdF9jdXJzb3I7DQo+ICB9Ow0KPiANCj4gIHN0
cnVjdCB4ZTNwbHBkX2x0X3BoeV9idWZfdHJhbnMgew0KPiAtLQ0KPiAyLjQ1LjINCg0K
