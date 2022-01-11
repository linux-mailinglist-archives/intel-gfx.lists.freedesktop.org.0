Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F58848BA0D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 22:54:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 357F010E5B6;
	Tue, 11 Jan 2022 21:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35F4110E5B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 21:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641938070; x=1673474070;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=cuRM5Ud+AfVyNhLktV5KeOVX+C/zO/Hy1MRyFXjdAeo=;
 b=mH1fvxPbkRS2dXPSHBbP7wF2XSgMADVvPZFr2gWIW6lIMoq48ineIoA6
 bv8L0nmPPqfdxPkhr7VPfMF6bGLO6DKn7faAjs9SNTpMEbq5g9lhHe2W1
 AsqX+5YQC7VBb6bdCA8Y3Ss18yZQaUvo4O0Wt3duivkUn51mAEVE+FpIF
 A5dy85KMHcOx9X2+Dp5kfeM+0qepqy9wCdK9hYIiw9SMToJ3XXOJNZ3xG
 KHCsQ9yfzQjiacKawPTXV8t7NDMo4zGsoDsvXsN0DSmzxY74/p15wiiUh
 hieoGPvx4yLaXZmqYlSV2/rNhxIt4OrzpDaPbjxqemN6AVYnflSTLBEaN g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="243388479"
X-IronPort-AV: E=Sophos;i="5.88,281,1635231600"; d="scan'208";a="243388479"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 13:54:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,281,1635231600"; d="scan'208";a="472602195"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 11 Jan 2022 13:54:25 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 11 Jan 2022 13:54:25 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 11 Jan 2022 13:54:25 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 11 Jan 2022 13:54:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 11 Jan 2022 13:54:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IF+yVIP8sxASLywcqEp5tZLwdQ/dmQF6CSdHvnT6pbC2LMKYj8OhgC5m13u3eZ0GZS6QkkI0shBYoALJs2UURSyh9Mq0l6fqYoqOusyFh6SVDFcevbUqjdrjJli5lKFW6j8SgLzEntAz03uCURV0WAIwKazAGfqY+TPS7gpE3FCyEV2o1JjGsP8HZhsUEO2td4ieeWSEhEkJv43CpYpHLNzzTnfGoG8KvSlpMY3vdXW9xdDkHlPbkiIFuq1QUugJyrapaZ/wZyEf7MGU2noToO+Rha1ft2yLfQUBOMS4Xt86grrl5mzdQySv6pzvPQ4z6mTe4KL5D22zrk/0WwZkiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cuRM5Ud+AfVyNhLktV5KeOVX+C/zO/Hy1MRyFXjdAeo=;
 b=GJeUKJ0DTR07gkwT07W0DwgfUwC+R9Yj5FMQ57JlReJCZmvl2h32lkNicuYM5dfvgib9fOsLTPGKiUJWXrwaVndyhC/q8l7z1GKsfzAaU5rjoun7MT/GIJEw+HEBXNaQJqR3CJAdAWZ8Lq9hPR0DZEvYrWEaSx2xSzv4vBxG9E1gXE1e58akjo7QNYixhAw0rJvxC0WxgPJZbv2AJ6EXYFlkTh7Ru44qLJDp0xhPftA0pWprxDiiAGXO67y7bLSHT7dzdpItDC5DrCeuS4af/AXca2Qiw0HBRMNBxRlcDIKOjIaiBrYvdUGnY9RKZRrvgMnsYasjKYOrOZcNwnQmOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BY5PR11MB4196.namprd11.prod.outlook.com (2603:10b6:a03:1ce::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.9; Tue, 11 Jan
 2022 21:54:22 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4867.012; Tue, 11 Jan 2022
 21:54:22 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC v3 7/7] drm/i915/guc: Print the GuC error capture output
 register list.
Thread-Index: AQHYBs2ihljs/fe2U0OwZWUizPkANKxeXnoA
Date: Tue, 11 Jan 2022 21:54:22 +0000
Message-ID: <2e927fc0e4d0ea4f7591cb7e814b6e3299c7717c.camel@intel.com>
References: <20220111093018.610582-1-alan.previn.teres.alexis@intel.com>
 <20220111093018.610582-8-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220111093018.610582-8-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e11231e1-0544-4faa-a8cc-08d9d54ced60
x-ms-traffictypediagnostic: BY5PR11MB4196:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BY5PR11MB4196211134D8C95E676AEA678A519@BY5PR11MB4196.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hBy0ppJteD3F3M6xkbh8hlOkaHZMG5BC6x61m8i/uOywCvWBg7zGmGpVo99GfZ9vemvmr6bDT2SFfnmuYn2lbiReDptRvx+Skc9pSCqm0WdEFWmCkJce4CA+dz3RlK7V8dsKghQqxtXpqgbucvB/LrL+THWTEPPKepfDfQOjvs9/2JQFN6DIFLgsKs/HO+Aj+0IdNt5gHr1sGhahQ4Kqx3rmDRw2kq4A3xyKs5ZF69t0e+RWQ4TLRpfCvPb117GPPyzeVDqiUjzPS9y1EI9DCLHpWoF7q4yTcWLAjFgoKDw/3r+ruXJJmhUPaIWaOEbxExJ2Y523AwR+3NNbnsp64hx657bk/QlUvS8trjoAfZxQAgAl/XzFc5+ThaoZZfvDa6w/VNP7rQM/nAdhuQ2xke+W9Uu0ZbOSENwJvRRQGB/WPEgO++wpe+m19KRsFRPCWJtQ2lPxKyp47a+NH3IRlWw0xA/5st0etIVt9xDtSVZiMcRIa+ZqL9aA1dQLPInXF1WdZKOpeV9o1bPnVMMfzNUVWA5YCg/O7oKr81p3utarHmYFcE4mkwxAZjUfbNUxIlt4fwrgqh2x53YnZyNDdGzUfgcrx8hUEkctOuHFZ1q5w5a4Z/KDnGAGlQn62FtPEnOeYVau0ntAweMZsG42LcsLukrqPdfXTQwyMnoSEKSam7wIYsout0cmBGCLr+esc56UTd/DWrKamTHiXm11CBeh6GZXxiWee4t7ecIPpmPvlcK7B4zM1+6LTeAYCetUv4GZwvNhhi0Eid/cddMD0h2jtr+b/llgm0kKt/zZUEUQcE+Krb/Apn3nKDEHgRqc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(26005)(6486002)(6506007)(2906002)(38100700002)(86362001)(966005)(5660300002)(71200400001)(107886003)(4326008)(508600001)(186003)(6512007)(6916009)(2616005)(66446008)(66556008)(66476007)(76116006)(36756003)(8676002)(38070700005)(122000001)(66946007)(83380400001)(316002)(82960400001)(64756008)(10126625002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bWpGZFVoN0VSRTBtUmVsUmJWOWlsRW1hWE5pYmVkcS94QUZBZzV2VG1Qa241?=
 =?utf-8?B?WVJuME1BVTRFUzBmZ1B4ZEdRSHpVa2lFbXR6UjN6cFcraWpJVGdVdDdOUUk0?=
 =?utf-8?B?WlY3c20rMHVPRmYzVmVoZ0J2MWh0VzZMYno0L2tYNVMxdzF2d1BUU3EwazBQ?=
 =?utf-8?B?U0EwUnpZWWN4Ti9ZUHZWd09ZamRsWHZIbmM2Lzh4MWVldlJhUXlCSEZjNTY5?=
 =?utf-8?B?WG5UYURDYThWanhtSDc4ZDZ6UTFoMWJ0UVVYK0hQUUM1VjZyN1QzUElBaVFC?=
 =?utf-8?B?TjhIU3VieW50d2JaRUZNMy8xeEtXcG5hL1FIbnJPbHpwTVYxQzhwaks1Uk9s?=
 =?utf-8?B?dW9HbXRTYm9JT0t6UnQ0bTl0SjY0RFpDYlNYakszN21uSHFMU25VR2E5SEQx?=
 =?utf-8?B?R3pBd2E3cVRPc1BMNmFVQ051UC9EYlg3RjBIaWVkUm1ZdVA2cFB2TDN1d0tB?=
 =?utf-8?B?b2tCZElXc0s1Y0NkUUFna2hOQ2MzL21VSzJaQmR5Y29ienFOTnN6K1lGKzZY?=
 =?utf-8?B?RlZzVUV5Z0h3UEorOEdvZVRvMmdiVEZkOGEzMHY5UVl0SS9lWExkai9ockFG?=
 =?utf-8?B?RENYWk1sRWJLMXpqTmx1aG5tMERjbVBDMWU3bUIybTRFVHdSQ1pGdGJoVFNq?=
 =?utf-8?B?VnZrZlE2cGEzbVZ4R0x2K2pFN0l0YTVLZXhZamRSY09EVHZGU29Bd3pkZkpw?=
 =?utf-8?B?OUMxUkhNcU5oQ2phZlY2SFNkNmxKWjFLdnYzUTVsWVZNM1JSdlgveWhnN0tH?=
 =?utf-8?B?VU1OZGxVbHFSdzgyWHVTU3NuQlQ5ckVCeURkSHdrQUQ0alV4L0pVUVlSeHhz?=
 =?utf-8?B?Nzd1RGI4TFJRMU9Ka1czQURYQzNQYWoxMm5vTGZIa01pOUdWeGwwTHE0RU1O?=
 =?utf-8?B?d0xUZXBmam14OTBKM1kwT296VjZ0dUp3QW82c05zR3pabFl2VXpwY1FxQXNY?=
 =?utf-8?B?Qk84akVmaWs1VTFYL3lGWG82ZlNKcHJHZTFpNGVMOFRiV1pLZytkSmUycUZX?=
 =?utf-8?B?SitBUDhYQmU3U0xxTWNpMmEvcHRXaUQ5anVUTUlaVUJZYi9IMUduOFppbnU1?=
 =?utf-8?B?bFBZOGZ6bFVPNUVmTS9kQzdoMk4wa01YQU9SbnBlcnNrbDhGd09pcEdzZmZm?=
 =?utf-8?B?eVpWRWxQbTV1eXFkaitxNERTcGZuS1ZyMG9wRW50cDRiRnZzcENmU05mK0k2?=
 =?utf-8?B?b1V5MWlXL1RCTTBVYWNVd042WFFFbEZzWXU1QXFpU01Gei9Cb1NXamdpZTFH?=
 =?utf-8?B?QUFMME02QU9Sa2s0dFZrMW1oRmVhQzRLTmNYaFRnSmlESjQ5Y2ttWkdGK0kr?=
 =?utf-8?B?MjM2dk5hSzlNR1hQTHczV2ZJaGZVT3RpVGVLbkVmUjZHVkZkM0FRKzg3RlMx?=
 =?utf-8?B?TUI3dENyMzM3SUcvNXVVYlF4ZEU2TXpoaWNPSkpSbmhuZ2dtVnZLcGk5WlFt?=
 =?utf-8?B?ODR2Q094VUFUQ2lWK0g2Mmd0Y0d3V3pKUHlpVERvZTlWOGpWTUdXZjB2RjFw?=
 =?utf-8?B?YVdUMHlYcmpyTzFrZDZ5UzNCMEttVkNucTVLYysxY0hLOXJzSXZDNlQxVHJ6?=
 =?utf-8?B?RUUxSnhjVHl5c2k3OHRDZW5CVDZZenFleHJaQldnYW5NTGZvS2xkODBBaDBD?=
 =?utf-8?B?MWFKOXlZMFRxd1ZCYzJhTjJDV1d3RDU1Z2hLM2NOWXJuWnlNcmV3Vkl0Q09T?=
 =?utf-8?B?SW9HVE0xckNiYkhVVUZWN04wU003VklrNFNWdTQ4bGhZVHQwZjkyUjBvVFUw?=
 =?utf-8?B?TkE0MU1PNStxZ2Jld2U2VzZxbFVicnhPMHVTVTdEMUNPS2FidDV4ZXNrUnpW?=
 =?utf-8?B?b01ZdW50WWtxVWZSVWZ1NjRONURaMzVHRjh2ZFQ1K0toNFp0R1RqK2ZhTm9U?=
 =?utf-8?B?Z0w1em15Z25LdCtTckRoUXhRSS9wNWRSWWJ6M01ON2pPMndueEx6Y3gvVFV3?=
 =?utf-8?B?VHJHbW5tUXR4dVVxQzdpSURpckFUOGxGb3FVUzhxUEoyNUVkSlUvakJ5OThD?=
 =?utf-8?B?SHNHTkpxOEk1N3JrK0NCS21qZkdxZTZXSmRXTkc3eEMyTk1MazNNYWJYSFc2?=
 =?utf-8?B?MElPSzBEdEdRcjg5UWhYQkJ3bWZ1d29HRGZoWXMvTjBwWUVadEZ3MXNJbFNq?=
 =?utf-8?B?WTlzbU5pYXZTZlZkTjZHRVJTNFVhZStUSFNqSWtFaGd6VThGV3lwNUh1Wjha?=
 =?utf-8?B?andlanNuZ0FlVlh2bVVnL0pTVFd0ZHpKYjYwbUhUREtlVmthRnZQZkNXMGRL?=
 =?utf-8?B?a25kV2J0RlRSZCtvZEpKT2NOWXkzYWt3MzJBL1MzZTRFTGxUSmlDZ2N0V1Mx?=
 =?utf-8?B?V05JVFJ3U2VKZVV0dE5kYlFFMmNoY1AwTXFjZE14c2Y0Z0RObmpWdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E669E1E9490BC046B5F6828A29AF5B66@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e11231e1-0544-4faa-a8cc-08d9d54ced60
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2022 21:54:22.5620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gcCsdXUMgMmtIojoNgDMni4eLZU9SYKvVvH9D6a/W2R9uSzeLAmK7uJejGX2ZXthkmtcd4M/uC6qihlpz0qJzfqqzqnrkwZc5L0xH069yFfHm//+xxfXkbQ45uBE+TTu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4196
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC v3 7/7] drm/i915/guc: Print the GuC error
 capture output register list.
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

SW4gUkZDIHJldjIsIE1hdHQgQnJvc3QgcmVxdWVzdGVkIGZvciBhIGNvbXBhcmlzb24gb2YgdGhl
IGVycm9yIGNhcHR1cmUgZnJvbSBleGVjbGlzdCB2cyBndWMtY2FwdHVyZS4NCkkndmUgYWRkZWQg
dGhhdCBkYXRhIGludG8gdGhlIGZvbGxvd2luZyBsaW5rczoNCg0KZ2VtX2V4ZWNfY2FwdHVyZV9l
cnJvcmR1bXBfQURMU19leGVjbGlzdCA6IGh0dHBzOi8vcGFzdGViaW4uY29tL1JCd2tIRk5xDQpn
ZW1fZXhlY19jYXB0dXJlX2Vycm9yZHVtcF9BRExTX2d1Y3N1Ym1pc3Npb246IGh0dHBzOi8vcGFz
dGViaW4uY29tLzhrNXAza1NaDQoNClRoaXMgcmVzdWx0IGlzIG9idGFpbmVkIGFmdGVyIGFuIGFk
ZGl0aW9uYWwgZml4IHJlcG9ydGVkIGJlbG93Lg0KSSBkb250IHRoaW5rIGkgY2FuIG1ha2UgdGhl
bSBhbiBleGFjdCBtYXRjaCwgYnV0IGl0cyBjbG9zZSBlbm91Z2ggYW5kIGdlbV9leGVjX2NhcHR1
cmUtY2FwdHVyZSBwYXNzZXMuDQoNCi4uLmFsYW4NCg0KDQpPbiBUdWUsIDIwMjItMDEtMTEgYXQg
MDE6MzAgLTA4MDAsIEFsYW4gUHJldmluIHdyb3RlOg0KPiBQcmludCB0aGUgR3VDIGNhcHR1cmVk
IGVycm9yIHN0YXRlIHJlZ2lzdGVyIGxpc3QgKHN0cmluZyBuYW1lcw0KPiBhbmQgdmFsdWVzKSB3
aGVuIGdwdV9jb3JlZHVtcF9zdGF0ZSBwcmludG91dCBpcyBpbnZva2VkIHZpYQ0KPiB0aGUgaTkx
NSBkZWJ1Z2ZzIGZvciBmbHVzaGluZyB0aGUgZ3B1IGVycm9yLXN0YXRlIHRoYXQgd2FzDQo+IGNh
cHR1cmVkIHByaW9yLg0KPiANCj4gDQoNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjX2NhcHR1cmUuYw0KPiBpbmRleCAwNDhiMWI3YjkyNTkuLjA0YjZkMjVh
YmQ0NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3Vj
X2NhcHR1cmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNf
Y2FwdHVyZS5jDQo+ICsJCX0NCj4gKwkJZm9yIChlZSA9IGd0LT5lbmdpbmU7IGVlOyBlZSA9IGVl
LT5uZXh0KSB7DQo+ICsJCQljb25zdCBzdHJ1Y3QgaTkxNV92bWFfY29yZWR1bXAgKnZtYTsNCj4g
Kw0KPiArCQkJaWYgKGVlLT5lbmdpbmUgPT0gZW5nICYmIGVlLT5ndWNpbmZvLmVuZ19pZCA9PSBn
dWNfZW5naW5zdCAmJg0KPiArCQkJICAgIGVlLT5ndWNpbmZvLmd1Y19pZCA9PSBndWNfZ3VjaWQg
JiYNCj4gKwkJCSAgICAoZWUtPmd1Y2luZm8ubHJjYSAmIENUWF9HVFRfQUREUkVTU19NQVNLKSA9
PQ0KPiArCQkJICAgIChndWNfbHJjYSAmIENUWF9HVFRfQUREUkVTU19NQVNLKSkgew0KPiANCg0K
VGhlcmUgaXMgYSBidWcgaW4gYWJvdmUgY29kZSAtIGRpc2NvdmVyZWQgdGhpcyBtb3JuaW5nIGFm
dGVyIGFkZGl0aW9uYWwgZGVidWcgb2YgY2VydGFpbiBzdWJ0ZXN0IGZhaWx1cmVzOg0KDQotICAg
ICAgICAgICAgICAgICAgICAgICBpZiAoZWUtPmVuZ2luZSA9PSBlbmcgJiYgZWUtPmd1Y2luZm8u
ZW5nX2lkID09IGd1Y19lbmdpbnN0ICYmDQorICAgICAgICAgICAgICAgICAgICAgICBpZiAoZWUt
PmVuZ2luZSA9PSBlbmcgJiYNCisgICAgICAgICAgICAgICAgICAgICAgICAgICBndWNfZW5naW5z
dCA9PSBHVUNfSURfVE9fRU5HSU5FX0lOU1RBTkNFKGVlLT5ndWNpbmZvLmVuZ19pZCkgJiYNCisg
ICAgICAgICAgICAgICAgICAgICAgICAgICBndWNfZW5nY2xzcyA9PSBHVUNfSURfVE9fRU5HSU5F
X0NMQVNTKGVlLT5ndWNpbmZvLmVuZ19pZCkgJiYNCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBlZS0+Z3VjaW5mby5ndWNfaWQgPT0gZ3VjX2d1Y2lkICYmDQogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgKGVlLT5ndWNpbmZvLmxyY2EgJiBDVFhfR1RUX0FERFJFU1NfTUFTSykgPT0NCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAoZ3VjX2xyY2EgJiBDVFhfR1RUX0FERFJFU1NfTUFT
SykpIHsNCg0KDQoNCg0KPiArCQkJCVBSSU5UKCZpOTE1LT5kcm0sIGVidWYsICJpOTE1LUN0eC1W
TUEtTWF0Y2hlZDpcbiIpOw0KPiArCQkJCUdDQVBfUFJJTlRfQkFUQ0goaTkxNSwgZWJ1ZiwgZWUs
IGJhdGNoKTsNCj4gKwkJCQlQUklOVCgmaTkxNS0+ZHJtLCBlYnVmLCAiICBlbmdpbmUgcmVzZXQg
Y291bnQ6ICV1XG4iLA0KPiArCQkJCSAgICAgIGVlLT5yZXNldF9jb3VudCk7DQo+ICsJCQkJY3R4
ID0gJmVlLT5jb250ZXh0Ow0KPiArCQkJCUdDQVBfUFJJTlRfQ09OVEVYVChpOTE1LCBlYnVmLCBj
dHgpOw0KPiArDQo+ICsJCQkJZm9yICh2bWEgPSBlZS0+dm1hOyB2bWE7IHZtYSA9IHZtYS0+bmV4
dCkNCj4gKwkJCQkJaW50ZWxfZ3B1X2Vycm9yX3ByaW50X3ZtYShlYnVmLCBlZS0+ZW5naW5lLCB2
bWEpOw0KPiArCQkJfQ0KPiArCQl9DQo=
