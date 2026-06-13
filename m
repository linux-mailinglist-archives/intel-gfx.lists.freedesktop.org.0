Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dC+bAOdmLWqGfwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jun 2026 16:19:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3522D67EBEA
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jun 2026 16:19:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="hC//tLII";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C123D10E3E1;
	Sat, 13 Jun 2026 14:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49CC110E3E1;
 Sat, 13 Jun 2026 14:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781360355; x=1812896355;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XJf+fOF2V/hBb3X0aozZE7sO1Rmg2xR2j96/awdxx7k=;
 b=hC//tLII9ZJ1Mp++9xw/rpi2WA1nRUgCTIm1y2686x8lBPT2WAxWQ4nA
 YLFG6KOKkIs2KswaI40TGrotGTkEuKutvhdA5ca7d/p3rK6mxruGmkoB9
 TFpV5ee7ChAi7u8+xgt9Ca1njs2HamlvbV40VjEHk9H8IXEQgsZ6BhSY4
 6VS30A21jgI0x9jqVthZCYL1tU40owFhtaPwmB8VLq5sXPTNWKGppJATz
 frJZAEyJG7hdbuS2rB62vKzjefTGj/ormMjsmHrQmZukRIa/YOKfvC86q
 /ZdE2XPDqVBtkE+CTd4XO5zs4zRKrQpTUEZCAAFwLgmNIwEYH9t+2EWJr Q==;
X-CSE-ConnectionGUID: GIYUybINQx2GAgogjQYmIQ==
X-CSE-MsgGUID: WgMhHfaYR5CWsPp/b/8cZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11816"; a="81183421"
X-IronPort-AV: E=Sophos;i="6.24,202,1774335600"; d="scan'208";a="81183421"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2026 07:19:14 -0700
X-CSE-ConnectionGUID: eMdnQMpMT8+UpV5IZFsXNg==
X-CSE-MsgGUID: VmpYRghtS9+wWtWn99iPXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,202,1774335600"; d="scan'208";a="250978504"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2026 07:19:13 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 13 Jun 2026 07:19:12 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sat, 13 Jun 2026 07:19:12 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.29) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 13 Jun 2026 07:19:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CpnsaeeVmuM/WNicasdz6e70Z2zUzbkRK4CzJ8KS8/+3M7oHjaYeHFeWvpqoLYhZLDBIsGJPyVJb1ac5GH2bmF4sywsEf85TFrj18VSLHyThWNFcd2zGkpHrQAdPe3baRdsOxnx2Q2Hg8fxBeHu5eE74jkLxHB62RkyAQH0b0Ngku4bnkACuJU0e8/69SfisLiW/UV2W0ZnU7r3v7NSCnjKGqxWjRT2/jcvFNpXLSfghKJg5p8xmFObZ7nfv8FS58RXzOKD76UZd6CdrlnV4eFwUao//IhwltQ0/SzPx+wAG8K1qdYFYG2IrlC1sUgCYO4vphpROsBjiqRHC+C+Vog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XJf+fOF2V/hBb3X0aozZE7sO1Rmg2xR2j96/awdxx7k=;
 b=yd3bTC0FzWX5nrDIO6W9oZgeFjiyVe1v0/onm8hSXeh3Y1JtZhlB8Jbzf+ImP6FUZmoJuIPwPcJmIvdInGpBYalDZ15TOjTzacY/ZCEic6anCeTZYKgN50uUEBj0PgAsuVvOiWY4rXTrnwTsXjohF2Qic63tw1MLFjOHv7M4db9+G9rio0iITHFTW/NxeKaOEkqsRy97QQeFJdB8eFFQzHOe/6JJ6qetbPmnkOZvX805EQ66qz2F5sRKMN0cMOLiZz3tNJs46qDFIO+GN3EQQzqUrVZ2xvhqp6eTBnqAj78TWdeBcz1o0yYQIpFVtFTV6Z5ZOFzITdCwR2v3Woui6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DS0PR11MB7443.namprd11.prod.outlook.com
 (2603:10b6:8:148::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.14; Sat, 13 Jun
 2026 14:19:09 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.013; Sat, 13 Jun 2026
 14:19:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: RE: [PATCH 1/4] drm/modes: Add DRM_MODE_MATCH_TIMINGS_VRR
Thread-Topic: [PATCH 1/4] drm/modes: Add DRM_MODE_MATCH_TIMINGS_VRR
Thread-Index: AQHc+nmzuY1zYKeH602XVATPWabpA7Y8iapw
Date: Sat, 13 Jun 2026 14:19:08 +0000
Message-ID: <DS4PPFE901A304F20FE1D96BB66D67F3EE4E3192@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
 <20260612144203.31715-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20260612144203.31715-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DS0PR11MB7443:EE_
x-ms-office365-filtering-correlation-id: cb317f33-4b7f-4d36-b987-08dec956bbd5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|38070700021|22082099003|18002099003|4143699003|56012099006|5023799004|11063799006;
x-microsoft-antispam-message-info: dS9yBQxOSfYac/0bF8uMmgOu4twAi7tRsni3ioTFoR1Do9N94bxIlWyyv6I6olHUBtBX3CBfa8YFiqj0610/n0Pld7AHpECk1qOeQj5PnLR7WtNhO+0JyAiqowyOzINBZw0JNrNk3WmXyXM/y5rLUgQlWAWRWOkelJa3jiZfZHXgKqhWMnN55FV8h5a+mji+2BOfWOVO9YXcwHj5nZEDXcaJpFbVncuqhc1IiOxm3UBIB4yUj4t2xlh3IScw+Hyy3O4fFXt01gTe9RQFvR1PICNDpNWQqob1WsTvsPWlAd/hQY6/J18aMq53dpkYB8+vo09RK7tKkrpJqHlL3KbIRP2bUQLRdEHFmGaBus2UAqb824gnmPsXaE4l7VBON2Pf1mgQ3/V8cW+i3riPLs3Wtvf79Oxf63+7Xcn6yqsJ6KgzYCZfM3vJjY4AMWTJFe3UQRCh95LarOknUsRb6y5WZlruKLErzAmxE/vkDNNj0UN3DYHsfrW3GiwkWgl1McZ4wxf74SqSIe1wPC32zFgMw5EbePC6GvTzosdqdLb4m38KRWAhBN8mkMPtWrOVxtVjbFwet3x1Ccygokqf9tVR0OB6O7WT7fxHzfNcQFenWJP0fsRS4xqQ87KfpbRNhP9cKqXLasb34ksYmAk9Yl8wMHHIDSv+M7yEa7CnEjj/U0WfiHWG/PCHuTIVVV2vK9+rZFPYpUdkFvKktcEkGrNTsS/VbBOnOciigMDH4DroIacFRrZYYYOA/BWnRe5kUY5E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(38070700021)(22082099003)(18002099003)(4143699003)(56012099006)(5023799004)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWF2OXQwRE1LaUpiM252QStaRFFmbytxMzl1UGV4bDFycTFxTmszNVUxZ2Zj?=
 =?utf-8?B?SzlQOUdQUXhwVVBuL1g5Zi95TDdnNGtuWDdrWlZBNVhUQnNDN3cyOFhsMXdq?=
 =?utf-8?B?V2pUVkl1TzdyUExHaXZQOUtZRkxZb0xGSWdFb0xOR3F6b3lvOGxPc2FaNzRx?=
 =?utf-8?B?NWhVMDF4dzN0NzAyMlRraXBzZzhueVhyZG85cjQzNE5WT3pKSytyNnZtS2Fa?=
 =?utf-8?B?NFRQUTl1Mjk5MTNiTkV5MDR0VTFTMjJTRnpMYjV2SW4vUTFxM21vS0tVWFh3?=
 =?utf-8?B?MHlyM3lodDhiOXhiOU9QTHRidmtKWjhpdEtXaWZqOWhBdzE2aXM2Y0JvWWZK?=
 =?utf-8?B?cEFOd1RxSDNWa01VWG1VWmtheE5VVDhlYy9tZ2dRYWQ1NEtQWWhpT1lCSGZ6?=
 =?utf-8?B?WVZpb1JNRjJtZE9MZVlSTUNzTnRGS1loZzVrWE90QnFERDArc01XN0s1WWVW?=
 =?utf-8?B?SjQzT2hHNVpLSmRuOEowRzZ6TS9OT2RFQTJ5WENkQXc3bDRmY1A3WVg4OUpt?=
 =?utf-8?B?YXV2V2JoL2ZKWTJRNWlVQU9lNWxTN3FzdXM1UThnZUVuYVBXa3RXMy9DQ3Jy?=
 =?utf-8?B?K2V0S3NVeUVCWm1YT0k2S1BmUUtCTDZNVk5iSHV0TkJEYmZjRDkzWVlnSGxR?=
 =?utf-8?B?VythSDlmQkZEQ0ZUbXpUQ0pUTlYxOWlIejhnQTNvZjJ2S3h3dVVKaWdlU1N3?=
 =?utf-8?B?V1E5OUI3NE9vYmVLZ3hSUGdWNHYweHFTdjEzeWZhNGpTWHlaWmRkdEZCeU1q?=
 =?utf-8?B?bklhY095cnlOSFJZS1E4U25UMUdNb0pHZ05uaUZYRzdCRXM1bjZYV3VzNUFF?=
 =?utf-8?B?Mm1pQitWNHhJT0IveUVHdUNGdkU5U2tzK0xDa1A3VVc2Q05JeFJueHJpU0ZE?=
 =?utf-8?B?TWpMWGVxZDJodU1ZdHZUWGZERHNaSFRKclZWc1NzLysyWlBqZ3plSHZwMmJQ?=
 =?utf-8?B?b1NRdDBxYTVnSjdSY0FzaytnaUtBU3pQd2hOVnNvZDJDa2hrZXBBaDIyVkRO?=
 =?utf-8?B?bXhKM0ZKcElTNWdxV1F0ZVBpeFRja1ZXNlhJU0xjMXZOSDRVekZnSktwTEVC?=
 =?utf-8?B?Zy9sSmkwSXF4NGVBdVg2ZDliMTQ4RGZWSmhkckxmMWdlVEZBZXk0VWowMFVq?=
 =?utf-8?B?elZ0S3dmY2J3STllVkJoRHJOZHRvVGJUU0NzeDlKS1dRRmtGbDhhZGR5Zjgy?=
 =?utf-8?B?QWtxS1dRenhiRnZvRzMyV0lRbk5WWEtsdWM3WXNXTE9BdEsyYXEzRWJXeDQ3?=
 =?utf-8?B?cW0xcWIxTTR3NmdrSFhqeUZpZDMzdkZ5SnI5YUNDWEZXKzN2WkNMTjh5ZnpI?=
 =?utf-8?B?aFhBOVU5VVFPNjJaY204YWhJWU5POXI0REFQREkzRUwrQ1N4aHpXdjVoTEMy?=
 =?utf-8?B?WXdJcHl1YVJqOFk1NGFVeTFyekdhc0NBWFhPSG5Nc1JJKzhZL210ZU9ZNDQw?=
 =?utf-8?B?R2RYYzZ5YXNhWmFwdkxPL29pQktzdUJhNjRTYVFCRHl4aWpOaXhqdEpiQkY4?=
 =?utf-8?B?TFBvNkZSZXFYQTlqaExscFF6SEFJaEtTUHI2UllVTStvcy90bHRIbWNuQVU4?=
 =?utf-8?B?NFg1czJESnRTUTJKRnUzeFZQbndrMWZQN1IzNWdncHNTQVVFc0NwNnJhZVFn?=
 =?utf-8?B?L3I5V1dFd0VZbUZiSzJTMkhSbXkyQ1B2MldCYjlnV3lRY0NENzVKaUt3RmVR?=
 =?utf-8?B?clBpZ2c2R2FkemdRWTlxbWJEbWloRnoxOUsxTXNvcWg3L2V5QzM2MVErZHJs?=
 =?utf-8?B?dTM4L2E2ZTRkNk1iZnVhK281U21EcHhBaVpKOTVVUlNxRER5ajF0Y1RQQTZZ?=
 =?utf-8?B?ZnJudmVrQ3EyUEV4bzMyYWFHUXZkVU44QW5lR2dXZnhDV2t6T29ZdGVHa1pD?=
 =?utf-8?B?N21yc2FEbzVBWW9iQjlkSnBXWEQ5c1hVNm04aVFybmE1Wm1COXM1eFlRaVhN?=
 =?utf-8?B?c0R2NjVaME9Lb25qa0c0bE5GRWYrL1JsM3VuUS9wcHBscDVZRFdCM0RnaXpa?=
 =?utf-8?B?V3llditCd25mU3lQZVloMUh4cDRUcVdpSWxzTVQyQ2NYNEpKOXE1MkIzUzJN?=
 =?utf-8?B?Q2JsejI3cmFRMXp4Y2pxT0lyYWxhM3UyMGl4N01LTGtQTGQ0L0ZJeXVIZWFz?=
 =?utf-8?B?RWlVZ0dJN0RNMzc5NkRpNW1QRXlKU3lZOGNPWURWTnJEOHU1U0MrRVZjbHRU?=
 =?utf-8?B?K1llTFdkeVhrMUlJZUJydUlYUVZwc3RTWHV4U0JpKzdsNGFudVRCQTdJbWVO?=
 =?utf-8?B?ZmZ1ZVRnRUNGbUxyNXNFNUEzbEFjM0FqR0YrYXd5NVYzT0JOOEp3TzdrTGNN?=
 =?utf-8?B?dEdvRHpXM09QeXVwVkJYOGExS3BQTFZ5UHRQNzFJMkVvSFdNTTV4UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: n70Ezobog7RL+LaUaIJ9bC8Df1l7JmoljmUjFEWV2ACRXc4AyoIiDeEhg8paCXjywMPhX3rIxyPfJyvQbWbOHZXn+XSUxA/5gHI9fMdUuR/IkJl2wDGK7U4GQnvsMfujURpsdUXTDE34Kh8PG/JUO/BOBhcyrjWNyX3UCYKrgiXEHsGN/wE0bUNnI3mL0VGa6EB4zDF5Pjy94+lTPf/9gwGL6XJF5YdvvlkmV4Cdw1B8poM7Wbp5EKNaeLsLuUsuP1fIIm+cT5MX/lAQopvoAN7JlmBrulYYbuc9c23tiT7guHFdeZGrhCLQund9Bh62IPMjbKUly/QvWq+2UagvXQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb317f33-4b7f-4d36-b987-08dec956bbd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2026 14:19:08.7898 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lxWOTl+hzLEirW29akm6ZSZLGx9BJZgsikXvhL/JWQ0P3htitfe2etcEb6e6BePVH2GDDOyKyar9SX4S+umajg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7443
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3522D67EBEA

PiBTdWJqZWN0OiBbUEFUQ0ggMS80XSBkcm0vbW9kZXM6IEFkZCBEUk1fTU9ERV9NQVRDSF9USU1J
TkdTX1ZSUg0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gDQo+IEFkZCBhIG5ldyBtb2RlIG1hdGNoaW5nIGZsYWcgRFJNX01PREVf
TUFUQ0hfVElNSU5HU19WUlIuIFRoaXMgaXMNCj4gaWRlbnRpY2FsIHRvIERSTV9NT0RFX01BVENI
X1RJTUlOR1MsIGV4Y2VwdCBpdCByZXF1aXJlcyB0aGUgdnN5bmMgcHVsc2UNCj4gdG8gcmVtYWlu
IGFuY2hvcmVkIHRvIHRoZSBlbmQgb2YgdnRvdGFsLCBhcyBvcHBvc2VkIHRvIHRoZSBzdGFydCBv
ZiB0aGUgZnJhbWUuDQo+IFZSUiBjYXBhYmxlIGhhcmR3YXJlIGNhbiB0aGVyZWZvcmUgdHJlYXQg
bWF0Y2hpbmcgbW9kZXMgYXMganVzdCB2YXJpYW50cyBvZg0KPiB0aGUgc2FtZSBtb2RlIHdpdGgg
YSBkaWZmZXJlbnQgdmJsYW5rIGxlbmd0aHMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9kcm1fbW9kZXMuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrKysrDQo+ICBp
bmNsdWRlL2RybS9kcm1fbW9kZXMuaCAgICAgfCAgMSArDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDI0
IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX21v
ZGVzLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMNCj4gaW5kZXggM2Y4ZTAyNWZkNmQ5
Li5lMWVlZDEzYThlOTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMNCj4gQEAgLTE0NjksNiArMTQ2
OSwyNSBAQCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQ0KPiAqZHJtX21vZGVfZHVwbGljYXRlKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsICB9DQo+IEVYUE9SVF9TWU1CT0woZHJtX21vZGVfZHVwbGlj
YXRlKTsNCj4gDQo+ICtzdGF0aWMgYm9vbCBkcm1fbW9kZV9tYXRjaF90aW1pbmdzX3Zycihjb25z
dCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQ0KDQpOaXQ6IGRybV9tb2RlX21hdGNoX3Zycl90aW1p
bmdzIHBlcmhhcHMNCkJ1dCB3aXRoIG9yIHdpdGhvdXQgdGhlIGNoYW5nZXMgTEdUTSwNClJldmll
d2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiAqbW9k
ZTEsDQo+ICsJCQkJICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlMikg
ew0KPiArCWludCBtb2RlMV92c3luY19zdGFydF9vZmZzZXQgPSBtb2RlMS0+dnRvdGFsIC0gbW9k
ZTEtPnZzeW5jX3N0YXJ0Ow0KPiArCWludCBtb2RlMV92c3luY19lbmRfb2Zmc2V0ID0gbW9kZTEt
PnZ0b3RhbCAtIG1vZGUxLT52c3luY19lbmQ7DQo+ICsJaW50IG1vZGUyX3ZzeW5jX3N0YXJ0X29m
ZnNldCA9IG1vZGUyLT52dG90YWwgLSBtb2RlMi0+dnN5bmNfc3RhcnQ7DQo+ICsJaW50IG1vZGUy
X3ZzeW5jX2VuZF9vZmZzZXQgPSBtb2RlMi0+dnRvdGFsIC0gbW9kZTItPnZzeW5jX2VuZDsNCj4g
Kw0KPiArCXJldHVybiBtb2RlMS0+aGRpc3BsYXkgPT0gbW9kZTItPmhkaXNwbGF5ICYmDQo+ICsJ
CW1vZGUxLT5oc3luY19zdGFydCA9PSBtb2RlMi0+aHN5bmNfc3RhcnQgJiYNCj4gKwkJbW9kZTEt
PmhzeW5jX2VuZCA9PSBtb2RlMi0+aHN5bmNfZW5kICYmDQo+ICsJCW1vZGUxLT5odG90YWwgPT0g
bW9kZTItPmh0b3RhbCAmJg0KPiArCQltb2RlMS0+aHNrZXcgPT0gbW9kZTItPmhza2V3ICYmDQo+
ICsJCW1vZGUxLT52ZGlzcGxheSA9PSBtb2RlMi0+dmRpc3BsYXkgJiYNCj4gKwkJbW9kZTFfdnN5
bmNfc3RhcnRfb2Zmc2V0ID09IG1vZGUyX3ZzeW5jX3N0YXJ0X29mZnNldCAmJg0KPiArCQltb2Rl
MV92c3luY19lbmRfb2Zmc2V0ID09IG1vZGUyX3ZzeW5jX2VuZF9vZmZzZXQgJiYNCj4gKwkJbW9k
ZTEtPnZzY2FuID09IG1vZGUyLT52c2NhbjsNCj4gK30NCj4gKw0KPiAgc3RhdGljIGJvb2wgZHJt
X21vZGVfbWF0Y2hfdGltaW5ncyhjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQ0KPiAqbW9k
ZTEsDQo+ICAJCQkJICAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUyKSAgew0K
PiBAQCAtMTUzOCw2ICsxNTU3LDEwIEBAIGJvb2wgZHJtX21vZGVfbWF0Y2goY29uc3Qgc3RydWN0
DQo+IGRybV9kaXNwbGF5X21vZGUgKm1vZGUxLA0KPiAgCWlmICghbW9kZTEgfHwgIW1vZGUyKQ0K
PiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiArCWlmIChtYXRjaF9mbGFncyAmIERSTV9NT0RFX01B
VENIX1RJTUlOR1NfVlJSICYmDQo+ICsJICAgICFkcm1fbW9kZV9tYXRjaF90aW1pbmdzX3Zyciht
b2RlMSwgbW9kZTIpKQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gIAlpZiAobWF0Y2hfZmxh
Z3MgJiBEUk1fTU9ERV9NQVRDSF9USU1JTkdTICYmDQo+ICAJICAgICFkcm1fbW9kZV9tYXRjaF90
aW1pbmdzKG1vZGUxLCBtb2RlMikpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvZHJtL2RybV9tb2Rlcy5oIGIvaW5jbHVkZS9kcm0vZHJtX21vZGVzLmggaW5kZXgN
Cj4gYjliYjkyZTRiMDI5Li42ZTNlY2NjM2MzNDkgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvZHJt
L2RybV9tb2Rlcy5oDQo+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9tb2Rlcy5oDQo+IEBAIC0xOTMs
NiArMTkzLDcgQEAgZW51bSBkcm1fbW9kZV9zdGF0dXMgeyAgI2RlZmluZQ0KPiBEUk1fTU9ERV9N
QVRDSF9GTEFHUyAoMSA8PCAyKSAgI2RlZmluZSBEUk1fTU9ERV9NQVRDSF8zRF9GTEFHUw0KPiAo
MSA8PCAzKSAgI2RlZmluZSBEUk1fTU9ERV9NQVRDSF9BU1BFQ1RfUkFUSU8gKDEgPDwgNCkNCj4g
KyNkZWZpbmUgRFJNX01PREVfTUFUQ0hfVElNSU5HU19WUlIgKDEgPDwgNSkNCj4gDQo+ICAvKioN
Cj4gICAqIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlIC0gRFJNIGtlcm5lbC1pbnRlcm5hbCBkaXNw
bGF5IG1vZGUgc3RydWN0dXJlDQo+IC0tDQo+IDIuNTMuMA0KDQo=
