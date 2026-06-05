Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eJfRB9bVImrPeAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 15:57:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20319648B01
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 15:57:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GkHQ4iWs;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6F5112B3F;
	Fri,  5 Jun 2026 13:57:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EA20112B3F;
 Fri,  5 Jun 2026 13:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780667858; x=1812203858;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/k3W3IxqPSzTt7bDYbqHBDYU/Sq56SfQ15OqOXUcRpk=;
 b=GkHQ4iWsaY+EhblOIQ9Fui6Sk4ZnXy0TACDStIKH28aED4AX8kkQkXAS
 vabvzJF2ODvuEW3WYT+IC2adUyhpyG2rNhkVXDYJxdujWTJ3PBVsHEaWf
 twQKb1v2w321qjLLrRt4pM469XpwziDjqmlr01hZccJbeWLVZASxpDMlt
 WfA8S6yA4XBJj51gNt8mPQln4JntiuXOYB3hecs635KwD7QfhfGoTgrry
 4DwWDCdMRJY4wnPF/682OpdX9bQezsWZFGEt8gYGEvC0qt44mol6qdssu
 1a9HuR3kFtLmiFEyEGCb30UFbMgN8oVRj7EBr29QJ/jBAvtCFOsVXMEym g==;
X-CSE-ConnectionGUID: Co5f/QVqRzK6+V82iWbt0w==
X-CSE-MsgGUID: mPhN+LqTQ3eVZwNBLwRb6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="80637625"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="80637625"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 06:57:38 -0700
X-CSE-ConnectionGUID: TZdSALsvRnSnO8e3r1zN0Q==
X-CSE-MsgGUID: 7NbsJ2WIRzaZAG21Pqemjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="246680524"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 06:57:37 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 06:57:37 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 06:57:37 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.3) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 06:57:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rX2zSPvDy0e6+FYOn9J8ypMApvxSemaZjuj4fAY5wl+0jA8yGZIUMvr/rUWUzWMGfmqtWAh4FYSPJUsHN+iseh1BDpxOKJdeW82SwCJ4fFWrOGutnmWVTO+mKKdwNrvvpW9UpqU6checv06d4PbQ9VP7fLPcpBWaApaOf+AoI9AcrwSEvPBB2DHiMqSdU+bFm6+zs27aOrV6a1uGQYJeLth3+VGc662o/2yNK0tMVqhcwzQHahPyqIr5T1pdvNyK/3MDbz9XQXLhGiCHjpto4vtyDpBhra7LWBLM5m9A/PHZNhA7gWhFtcsdeKj5A75augXHIZBnCaP1OJMAj1dsqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/k3W3IxqPSzTt7bDYbqHBDYU/Sq56SfQ15OqOXUcRpk=;
 b=Irfg1LSRG1ZExTbYPv1t7VgqJRBEg0OKjeKRuP1h5olCnSuSVD5zYXVqGUqyO8oOweHl6pgr2CZLObzAGkzaqnwvzq16ZuRTC/3JTuMeIcx8v39sl5SAHqU1Ce94TX901KBIT7vMw+a1AwhwUAuE5ynuvVp1T8iygVxmKx1ZbgPAdlYacuPbZxz3clYK3EKmhwxzPKRS+1Wfl2+mrQ6ukMCRlLOjHnyLhlgxz58WU1Pfygq93nW8XezLLBnPXjzjCci9j1S4v1r9EkSI5SGlzn9N3LseRL+sdGbrgj4ilZJccJQQ71Fd4yLm1fpDPb4jwLCkFkKDatd0A2vnXIueeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CY8PR11MB7195.namprd11.prod.outlook.com
 (2603:10b6:930:93::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Fri, 5 Jun 2026
 13:57:33 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 13:57:33 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 11/22] drm/i915/dp_link_training: Add helper to query
 pending autoretrain
Thread-Topic: [PATCH v2 11/22] drm/i915/dp_link_training: Add helper to query
 pending autoretrain
Thread-Index: AQHc8a4easiLJull3kKYnJk5arxjE7YwAn9Q
Date: Fri, 5 Jun 2026 13:57:33 +0000
Message-ID: <DS4PPF69154114F192EBB760F4F8FD07314EF112@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-12-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-12-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CY8PR11MB7195:EE_
x-ms-office365-filtering-correlation-id: cf5ab5d2-e2ae-46ee-a627-08dec30a6458
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|22082099003|18002099003|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: MQjKk+55COBQMUMmrhZJ7m7+b1EvaaMWR0TJcJkR3f1XHfrpAygPlJ9oMdMrmmy9ZWqYOgnB12FIaQwrFCMlWUN2jx1ggr9yOOkeAqEzhp3CWCnKfRQIZhEYZxgLGCfAfBPofn+ymSKWqms/+dzdl22TsWvEeuTQm7DFhqQfI5nvr8cbTmbWFusHvEaF7/DmxqhPuX6o4Ssk/VquQznBBCQa2kzk27iNzZpu7VGPKVZHIYxg7wBnfMvWmsNVMGH/7ixF53bMqYByqSxh4lqUH+EN5c4vHGs9oWTOepCnLQYLEYFL5RxrBKaJRJ1iowbys7JDGloNUl0wrQW42KyNzpgyu8w0+OGsFtzm714m5MZdxBW8ph9p1sdFLi9PwEw1VW8waXWDQyxz3iffQZWXE0xoVZ6SmppHhiao2hDVVjyPKoduGff5BYRgflgW8OveGnCbZcGcHBroayCtpwWVl5ZRchl5UpExwowqgPAqqMGhWQgF1rA+IYdaeLPRaBhUqyrbzb8R6PwD+/BXVjTkvVLJD3c95o/gxJeMibaipy+9AE+TkvsdiOeQhbVKfYolDdgCFKyvRX9AzUdy7yhouTXlRpZkz+DNi4CZYztIpnpJq5yog5hFpYSTPwz2YE7GFY6S7zmqlhm3qy0eXZCCUnl9rIfSgBuUDYwQ9hG/gBlERh4jFL0G2Zrf81cozCy0BHhFXiDa+UyQYXidPA6jyv6F/cKu8ylv3rotU0FD24V7HyRd5eUAfwS9lr2geYbU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TzVzT21uMjEzQldmY29TN09ud2UwTFBvaDl3emVHaEtFU3pXek9LaG9Oa3pm?=
 =?utf-8?B?ZGVsRG11Syt4dUkwWDZlUlNyN1ltV1BtN28rTlFNMkNXNjBuUVVRTm03Mjcz?=
 =?utf-8?B?ZkxkbTZ5dG04bG1IZTNYSmZYZ2N2VXJ5U1V1SnNQNnBXSnlZNXBvUWFSUU9C?=
 =?utf-8?B?d1ozR1NzdmZTeFk3cW9KVFdQd0FZTFdWQWd6RDYrdnNSMGVTMHhhN2RaSnV0?=
 =?utf-8?B?L1FlVHRvUmJnb2hjYWNuWkN1T3d1Z1pndk02bThPcVJwRHZ4bytPWEVVdkZ0?=
 =?utf-8?B?SmpPREgvY29vSElMQ2tiMWhxOFNUNXdTZ00vaUVVbVdXb25OTXNKb0dKYnVo?=
 =?utf-8?B?dytOK3ZPS1JTZTZyTkdFYjB6bW9KdG5oWDVJaWFvRjYrcHlCZmRoWlRWNE9F?=
 =?utf-8?B?cWNCYkRaOTgrU0plZkVKNG0zU1B2cWExL05MdVgwaUZyYW8ydmhXdDJyQmtF?=
 =?utf-8?B?NysxTzRqWGFtUi93dHZzL1V2c1VQc3Y5b3dTU3Jpbk1iOEdpS05YckxwUUd3?=
 =?utf-8?B?d2xlS1pYdVNQbUVicjJIL2E4UGU5cXBLTmozR1R1Y2ZjakFXRkh5N3VGYVNC?=
 =?utf-8?B?OFE1VnF4Q1JMdzZ4RWNzSVhFQkZzUUw5L25UblZqTGhrTkNGQzdrNjA2SGU0?=
 =?utf-8?B?YU4zSFdkVURoQXhmakdob3hyUkIzRk1NSWRpbjg1aGlNQmJOODJ0R1N5Rkpv?=
 =?utf-8?B?aitDZC9KTFZOckZkMkVWdXd4U2JjZ0hMZ3dkVkNUaTJjYlZPNEh3MHF6ZlZr?=
 =?utf-8?B?ZFZwR2RhQzd5ak5seXowNFNxTEFqdFlXNFltSkZvU2ZZQis2OHFMV2wyZitW?=
 =?utf-8?B?L3pFMG5YTTM5aWhsd1V4NjBScTU3Y2h1bm8xZ1pSbkhmckM2WlplbU1JUlI0?=
 =?utf-8?B?eEdMWWRGa0ZGQ1VRaFh6YmNCV1JPQlM1MU1LTHVVOWZ0QnhiU3FGUnMveVM1?=
 =?utf-8?B?QW45SGx6NEpEdGROcm1uYTVMdmR2VzF6a2h1TEY1Z0hOTzZNZGdsMkxlZnV3?=
 =?utf-8?B?VXlxOUVhNHlQZmxLV3dKSmkzNDFjM0Q5NHpzWU1vWXk3ZU0wRzVEUjBNWGo3?=
 =?utf-8?B?b0dQRDdtOFBpaHArdlR4NHpKa3hlZTVWY1UvSkZPaXJqREs2dk9EOHI4eTNz?=
 =?utf-8?B?cnZYOE9hSlN0enB5VlhkWlpXZlNiVEk1YnpkeVFzZmhGUGRvdEdNa3FTREkx?=
 =?utf-8?B?RjVtUGI1cWZydmNtM3RvMVlWYVNEcmgyeDBBbUtUT2NodFpieVU5MlVBU3Jn?=
 =?utf-8?B?SWlNRi9lNCtROEZ6aG5SQnNaL2xlTnhWbmZrREpER2lUWTcrV3lpRVFDVWZC?=
 =?utf-8?B?NE9WZE5JS3pHY3c0QUZDbS9zd2F4ald3cGZIN2I3YUVPclF3MjJySUtKa3lR?=
 =?utf-8?B?TFovN1h3TDVXWG5TWkNIMDNYNGRuVHJQS25jdVVVVDE0RVc4WkJIME12R2t5?=
 =?utf-8?B?dnZSRDdsNXdhV2hTYm5lVk1JOTI0dUFuZy9zY0VFVVN4U3llVkdFZU82VTJK?=
 =?utf-8?B?K1JzMzBwSHdYdklkUXJGaWFhNUt0MnI3MHV6WHNZZjBlbjJvcEprVitnNHAz?=
 =?utf-8?B?SkJkUlJpTTVSRHBDZHJmYzBuZWk5UDRUa3FLNGdzMmZqdU1CREFEOEx4MEQr?=
 =?utf-8?B?UkxldnJzSWErcThCbDZ3b3d3S21NWlp2ODF4QnpPUHdmd25jaDFwTElZYS90?=
 =?utf-8?B?cHJ5T1hVeld0YTViQi96NEZIUk5uRitmbVhCazlRTXZZNG9kMzZpR3NNRGJZ?=
 =?utf-8?B?WjNDWkk4aWtPOU9IZk9KSEJaZm1HVE5yMHpRamZhNEN5YXRZYWZDWW5HYnRw?=
 =?utf-8?B?VVc3NWZMMXByMzVKRTI0T2E0SEdYelBucm1qV1ZFR0JLVUdheW94YWk3Z05L?=
 =?utf-8?B?SUxrcXc1aVBGWE5iSjdHVVVKaS9IM1ZJYVpoSmZaSURFNU00akh5STZSMnRO?=
 =?utf-8?B?ZU5ZN2dxLzFmRG1KUjQ1b1RqTktBeEt4YkJsUDdWSHpoNXRsVndudkdERFJp?=
 =?utf-8?B?RTlvTU1SREdHM1IyRjlTUWovU2pPVENISzNqc3lzUU4vb052cGJOSzVzODhn?=
 =?utf-8?B?b2k4NTk4MGlLVDVKZ1NvRjVvN0NEM09WM1ZVb1FlSUNtbDE4ZU5YUGVIOERZ?=
 =?utf-8?B?aEJabjBPNG5sdHJtVCtJbEpvMmZuZHA5cEdxN3B6cUtmUlFBSzFKZjhHMlE5?=
 =?utf-8?B?OE1hckgwNmhBaW5GcE4xVHE5YVdvQkx5cXdhZjRMTTlmd3JmS21QTVZkU1Ru?=
 =?utf-8?B?bFlJcVVYQ2h3NEMrK2JpWVo5UmlaSmVBZ2hCV1BQMEovQ0NLblJuTlJaNy9P?=
 =?utf-8?B?UHUrd3o2QlBNSUhlVGNPd0d0RTIyc2xGaTdZWjRrUkRSRU1MWkVOQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PNQJazBxiS6QNDP4LnYOQLK+USvzrtkC6YY9RqgA5cjMnvJzipwRjYQU7C70xa25YKRdMEWRZjJnXvo4UD7BDfDyRwRm2OEEqtsHTXiHe6qgIctxQ04IspvosixM9I8jwAeNSvIuHlxtJf1E/szfwklOQUuMNHe+LSoqUJQPHvsRWRJaWqz+zPEQcAvQk0Qd9U3g32kpnqwrg+htJz/pb+6ZmzwCQtCUZ+UIWfkcYypPrqsdgvwAyxi1QRjODttiFRstVynlRHjJRg+TKxMw0HP3GeC4tH3BQZckHgPimAQXz1RWGErZbpyO0WQpvgf1pMjhXdU/nDiSYT2oRjHKUg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf5ab5d2-e2ae-46ee-a627-08dec30a6458
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 13:57:33.3217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iSRleSr/rOynqd74teFNPzwek252AU5RWBILA8/iXsyAZQKategGz+T04jSPVF3ubmAIWJjy3qeOcR8cZJp4wQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7195
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 20319648B01

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBNb25kYXksIDEgSnVuZSAyMDI2IDEyLjM4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5p
a3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIg
MTEvMjJdIGRybS9pOTE1L2RwX2xpbmtfdHJhaW5pbmc6IEFkZCBoZWxwZXIgdG8gcXVlcnkgcGVu
ZGluZyBhdXRvcmV0cmFpbg0KPiANCj4gQWRkIGxpbmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5fcGVu
ZGluZygpIHRvIG1ha2UgaXQgY2xlYXJlciB3aGF0IHRoZSBjb25kaXRpb24gaXMgYWJvdXQgYXQg
aXRzIGNhbGxlcnM6IGFuIGF1dG9yZXRyYWluIHdvcmsgaGFzIGJlZW4gcXVldWVkLg0KPiANCj4g
VGhpcyBhbHNvIHByZXBhcmVzIGZvciByZXBsYWNpbmcgdGhlIHNlcXVlbnRpYWwgbGluayB0cmFp
bmluZyBmYWlsdXJlIGNvdW50ZXIgd2l0aCBhbiBlbnVtIGluIGEgZm9sbG93LXVwIGNoYW5nZS4N
Cj4gDQo+IHYyOiBSZW1vdmUgdW5uZWNlc3NhcnkgZnVuY3Rpb24gZG9jdW1lbnRhdGlvbi4gKEph
bmkpDQo+IA0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCg0KUmV2
aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVk
LW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwgMTAgKysr
KysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jDQo+IGluZGV4IGNiYWM5YTcwZThkNWIuLmY2YTgxMDJhMzAwYzEg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlu
a190cmFpbmluZy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jDQo+IEBAIC0xMjY0LDYgKzEyNjQsMTIgQEAgaW50ZWxfZHBfMTI4
YjEzMmJfaW50cmFfaG9wKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJcmV0dXJuIHNp
bmtfc3RhdHVzICYgRFBfSU5UUkFfSE9QX0FVWF9SRVBMWV9JTkRJQ0FUSU9OID8gMSA6IDA7ICB9
DQo+IA0KPiArc3RhdGljIGJvb2wNCj4gK2xpbmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5fcGVuZGlu
ZyhzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZw0KPiArKmxpbmtfdHJhaW5pbmcpIHsNCj4g
KwlyZXR1cm4gbGlua190cmFpbmluZy0+c2VxX3RyYWluX2ZhaWx1cmVzID09IDE7IH0NCj4gKw0K
PiAgLyoqDQo+ICAgKiBpbnRlbF9kcF9zdG9wX2xpbmtfdHJhaW4gLSBzdG9wIGxpbmsgdHJhaW5p
bmcNCj4gICAqIEBpbnRlbF9kcDogRFAgc3RydWN0DQo+IEBAIC0xMzA1LDcgKzEzMTEsNyBAQCB2
b2lkIGludGVsX2RwX3N0b3BfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0K
PiANCj4gIAlpZiAoIWRpc3BsYXktPmhvdHBsdWcuaWdub3JlX2xvbmdfaHBkICYmDQo+ICAJICAg
IGxpbmtfdHJhaW5pbmctPnNlcV90cmFpbl9mYWlsdXJlcyA8IE1BWF9TRVFfVFJBSU5fRkFJTFVS
RVMpIHsNCj4gLQkJaW50IGRlbGF5X21zID0gbGlua190cmFpbmluZy0+c2VxX3RyYWluX2ZhaWx1
cmVzID09IDEgPyAwIDogMjAwMDsNCj4gKwkJaW50IGRlbGF5X21zID0gbGlua19yZWNvdmVyeV9h
dXRvcmV0cmFpbl9wZW5kaW5nKGxpbmtfdHJhaW5pbmcpID8gMCA6DQo+ICsyMDAwOw0KPiANCj4g
IAkJaW50ZWxfZW5jb2Rlcl9saW5rX2NoZWNrX3F1ZXVlX3dvcmsoZW5jb2RlciwgZGVsYXlfbXMp
Ow0KPiAgCX0NCj4gQEAgLTIwMDYsNyArMjAxMiw3IEBAIGludGVsX2RwX25lZWRzX2xpbmtfcmV0
cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWlmIChsaW5rX3RyYWluaW5nLT5z
ZXFfdHJhaW5fZmFpbHVyZXMgPj0gTUFYX1NFUV9UUkFJTl9GQUlMVVJFUykNCj4gIAkJcmV0dXJu
IGZhbHNlOw0KPiANCj4gLQlpZiAobGlua190cmFpbmluZy0+c2VxX3RyYWluX2ZhaWx1cmVzID09
IDEpDQo+ICsJaWYgKGxpbmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5fcGVuZGluZyhsaW5rX3RyYWlu
aW5nKSkNCj4gIAkJcmV0dXJuIHRydWU7DQo+IA0KPiAgCS8qIFJldHJhaW4gaWYgbGluayBub3Qg
b2sgKi8NCj4gLS0NCj4gMi40OS4xDQoNCg==
