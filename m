Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0635E54EB
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 23:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EABE10E11B;
	Wed, 21 Sep 2022 21:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B346610E11B
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 21:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663794479; x=1695330479;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=fwtCN5TJQZp1I8MH7viAYCoH+e495Ci/iO0HRz7fQ4E=;
 b=DcryA5U2z9+cVcPwERuQK99bZMndUOxqDIYBNDYt6cf87FOusv1OWWS5
 7F948YkezOSDHV4v3cgJVFGkBq2Oe72/VtcZm8EQuiY7zQrbEiv4IR72j
 oFTQzMrT8KmkOC9CQQ2DLWLc0LkjZef6yEhyUh2YNrzlruuaMJtcRU86e
 uATsqBOXGGuxqlA3EF/xb75gEkxB4DWymXdI0lQL+szs30EqIMibG3+HS
 33tlJ5yHt1j2S4apSDXa/CVd3rlu9bUUqLZhSdG+cjTIVa1AJ536TsK+k
 QP/d+l4Gh3xPe62SD8n4HlHUz2s0lxvLaUbo7i+/9uGZuAfyUlMBYkJF5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="300968454"
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="300968454"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 14:07:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="864592186"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 21 Sep 2022 14:07:58 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 14:07:58 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 14:07:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 14:07:57 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 14:07:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gfquUd1UByEG4rpZfK9g8hZ7LEEte5YKTEDWZmgXvAI3PFxHJOjmsjKYBspVBG0qAYfJ6QzQFjiZufyMHYW6yQV/hbwQExvcwzm1td99BEzI41Y/EnJTCqIlc9RNTmg+tu83f2A0POJyre3F5PS0os9TsXOMgUpy0BQSr8sKJ9n69BCw9RZKy1pHldF4X/Xaw31uwPRPldGdKR8BI1o6MXYG+HBCrPvX1DjBdX1K7hprJI12Yt352xdZDYNamvsxQDtfI39t34NkTrvBJ8ERgCDxvDzTJ3YDzaAFwx9T/AEztwoOxDeWUNQ4+y2cZ45aouUB5yS2ubFtY7ef6QZ0bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fwtCN5TJQZp1I8MH7viAYCoH+e495Ci/iO0HRz7fQ4E=;
 b=cpZRsRXDH8lUbKX3g6wf7dnOr/kHMy7YMQAjV+1T19HkjBG2/2NZYPev+Y88BYOerKg0Q7t1HvGSFoWLOYZlGcR/lpMjVY1x0yWlk6rCBdhl5Q3gLl1XogyaEUHaE18UTlBdGYpUz6+JP2rpkirbtvGcu0Wl13ms0hzKUzSqC9ZULz0zjqnRq2YUfzEfFfd3q+ykLUNp96ZkENWcQKraJMBHdk0NkhHnx6j7J3/1kv6EHsB3GHyMsXZLBQeaS7SEYOsHp1D2yO7M3Lp0xILLUJIs4GMa4SU2DeR7CFQR0cBmgUOf33p7hAxAouGlz4skAgz/yyVGNMt2vOMeDqDLgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by SN7PR11MB7137.namprd11.prod.outlook.com (2603:10b6:806:2a0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Wed, 21 Sep
 2022 21:07:55 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::7056:c22:10bd:3da]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::7056:c22:10bd:3da%5]) with mapi id 15.20.5632.021; Wed, 21 Sep 2022
 21:07:55 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [CI] PR for DMC v2.071 for DG2
Thread-Index: AQHYzf44JjRtATaeokWhWjSHML+pjA==
Date: Wed, 21 Sep 2022 21:07:55 +0000
Message-ID: <c5fef6f9ce2910d97754577baa409f19bdd49af0.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4 (3.44.4-1.fc36) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5169:EE_|SN7PR11MB7137:EE_
x-ms-office365-filtering-correlation-id: c355f32c-f157-48ad-6d03-08da9c155ad9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xdf4tgd+h9+PVRDQ/B1Z+iUY3vsCtYAAr8Z0x9ZN1lIqKM5J21zN19b2Gsx4lblLS3qSpYLIsQjVZVgwuU9c0+Gb1iSgXFCCVhoZDp/AcS2Hrl3l76Cfxed9NAmXBPjoRl3HKRi48uFvnx8hDipvr9QvmWwqj7GWSRWqI6x88XtsWesCvKv41pNMAGQ7I6NrOAUfg3cxAQSiRKaG4gKOvjTZ12Z5qCN45BrqQCcNyABlRSMgmxq40CuP8AYIBBrGFh3rwfxZr8xxDyja4wyfMtCNyQikcGv4AnufhPzalAG+zfU3KLGoDwMwvDnh5VMhR1vkSi9xDH8VGA0HLqSS8pNXaF83w/teRVSizCO171DZHCoLDceJm2mvSoEJDoGR1MeaiYy503w75kYUrToTcdTUkoi/RFXgHKBcylUoWXEkUUHWDoUY/f9LAQvBBhLTUzFRl2rbwvZtQ+f9JaoaGWr4xMBCIuRoS3SbIZvzAfh6fWjVeOWlUiSDtxoJ+33cTNQ2IDsj1MwAkxGiBf4xNm8g2KMSQAaHk7jyrvqc3kQOFyy4IzJ6hY4D6zSlfekqotb4CxTsB8vbW5N/ghBKOTJlXnyynH/ePKlRp6RlQOnWBaAmLL0DAU+a5OaEPPgTsR/SSu1hktqfMtbqawMJi5N/Vsbedwpna+d/x3Qj6cAvPPWB144KJ82vz3hqMZxKBV90buju9Rv8XvTlCX0S39Y8zahlIFL7PQdWmKYkQQIyag5l3MUz0TeXPMxKAvxMxo6fz47ZoVP2Rigcvz6z/w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(366004)(39860400002)(136003)(376002)(451199015)(4326008)(66476007)(64756008)(86362001)(8936002)(186003)(38070700005)(6506007)(66556008)(91956017)(6486002)(478600001)(122000001)(41300700001)(107886003)(8676002)(36756003)(66946007)(76116006)(71200400001)(6916009)(66446008)(83380400001)(2616005)(2906002)(316002)(82960400001)(6512007)(5660300002)(38100700002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDlwbE1qTjcySXBnb3lUSTRlZXlwYnY0cWlBSGJrUEhobWRycTBOV3J3QUFw?=
 =?utf-8?B?aVBwOXdiRHpibVF2M3JJdEJKZGRCRVVwVUhRWllIb3ZiNnFkMUwwWDdMenR0?=
 =?utf-8?B?UFZxUlptdXVUU21wbnlNZmQzdG4yeU80UmFQdDhiWjg2aTNPL28xd2RsY1p4?=
 =?utf-8?B?OE9kMlpwaUJGdWFTR0pEc1FFdWhNODF5MjI3c1RUN3RkNHBubDZ0T0FGVTVN?=
 =?utf-8?B?SndKYzBGK2swQWg1NlRTc09GR0IrNEdqMERnUjhHQ2Jwb3VYQTU0a2RmSFJo?=
 =?utf-8?B?Mi9OcGxrTWJJRVovSlhOM1huQmVraER6NUdNc3JVa055WGtxNFN5dXhDQU93?=
 =?utf-8?B?a2l5Y0doazA2QUR4NHBsRG82WmVVZkpxcGdTTC9EbU84MHB1ZkdBMkRYNjdX?=
 =?utf-8?B?QUowVGJ1VHFLR3BCT0NQVmgyVkRqL2Npb21RMDdpZFVIYWlzSzUwZXFmUG56?=
 =?utf-8?B?WHExbVlGTEhVSHhXa2lHeEJvaE9PVkI2Y3pXWUxjYXcrRGNPcU05TEZwN2FB?=
 =?utf-8?B?S2V2ZUlYYU0zN1lrK1dqTXFhVURXQ245T01VSVVSbEZqYngvSmQ1N096d0FS?=
 =?utf-8?B?K3d6UWQ0RU95UG1NZ3RONnZHMy9nT2dPU0dFZWJkVW9DTmFqME5oTmc0aVR6?=
 =?utf-8?B?bWZBc2lIQ2tldUMrbHNiSFY1bTB6UzVWdjZGVHR5NEVXWWthN2dJTHhjSlRz?=
 =?utf-8?B?aVQwTTlWaktOMENGSmZWSEVJZjZ6Uy9YT2lrOUQ4SDNKUXdlQzUrNmdqZi9P?=
 =?utf-8?B?eHJlZER1RVNFbjdpWkdta3N5VXRwcXJ0TWFOdW9NWjRRK1ZEcEZGYWpSeitX?=
 =?utf-8?B?TE9kQmJKNTdXMExvc0gyanNJSUJsODJiVXlvdTZ4SkdjekIyN1k3dFB5blZ5?=
 =?utf-8?B?cXNVZzMrR1lRUE1IWGJIZGkyNmE0ZmFROGNCNFQ4K3A5SzJvajJRc3VFZ1l5?=
 =?utf-8?B?akFFQjJsaEhoVE1ub1ZhQTlvcjh6aVd6a0M4M05lZm9jd0xVeTdzdWlxN1VF?=
 =?utf-8?B?NnIwNEI1RHZtZS9oVjJ5MjFnbU03bkRrSURsWnBNc0RBWkJXZUZGMUtZUEty?=
 =?utf-8?B?MjZUeU1nOE5sanVPNU96SHlEVUNFTHNQeThWakJRZzdGV0pOUVJzd2dCYU5m?=
 =?utf-8?B?M0ExQVo2QklFa1VBNS9GRkJaZG1zTmdtMWt5QURDVkMzNTBQaHRETkNocVI4?=
 =?utf-8?B?WXlMU2ZQMDFYQ2NOVlYzUkw4TmlqRXRCZ09jMCtqT2g5VDIzNEZZZVluYTNC?=
 =?utf-8?B?c0U3bVBUbGRWcE5hQjIxVXVRb0RTd2FQSkNsZDE1WkJOZUF6TXo5czF5SlFi?=
 =?utf-8?B?TEluZC9WbVY2Z3BiakVCTnpEQWpZdFcyMk10V1dvbCtHTVdRQ05XK2hrMVpP?=
 =?utf-8?B?NDBBWXdKeEpNQXFzOEJmMEc5NWJmWTY3Q2l0MDhEcVA1eUpvWTB2N211Zklw?=
 =?utf-8?B?ODJWN1hpdUtkeGFDYThXMTZGb2h4V2JzTnZGOWVvVWtaMWJuUUdhc21HdThF?=
 =?utf-8?B?RldWNFRaYTh1ZUdoYXB0WVFGMXltL1MyamZQWHpxTUNaMEpCbkIzeVZSOVUy?=
 =?utf-8?B?SExiYzVScWsxVi9rVVBFdlFabFY4d28wdlp2NWpGZHY2THJ3bHAvc3VoUDVv?=
 =?utf-8?B?YWVqSlE5Rkk1ZGkxbXlsZk9iNDk5dVdTR3djMGtaTENDTmF6WSs2S1A0OFF3?=
 =?utf-8?B?WUlpVUd4YVh6SEwvdW9vd3lZdDczMEJJb1ZQOGtEbWdncHU1bkplQVN5N0xo?=
 =?utf-8?B?NXo4b0N0aVhWdDI3bUFsTjc3SnM5bkwwTjM5T3lwNldGaTVhWkhNVUorcHUr?=
 =?utf-8?B?Rlp3V0YyL25lVkRmSWZMZi9SL3ZKd05WSis1R25Wei9qZXlvSmt0VDA4UUtO?=
 =?utf-8?B?WHhmVnczSGZMN2JidkhLVW5OSkYzMk5tVXhybUgweWF3L2JZd0s5NWFIUDdL?=
 =?utf-8?B?WTlXV1BZUk9pSVFpTWpDUFUyTTJidkpGVDdMVnRkZ0lGcmt0ZzVpUW9JVjZj?=
 =?utf-8?B?OHVFUzB6ZEV4NUJzemJYMVhBYnFtQllDdUIwdnpkRmc1QkJ1Q2JJam5qUitv?=
 =?utf-8?B?WXBSaE5PZmlHSzF2VGpsVzRQTWF2QTJTZUxzaEtoSGhoWVhPbkVWdExORCsy?=
 =?utf-8?B?RHZsOTB5Qy9rb3VoNDF5YVE2K1hzaWt2bXF5M3FjQzNqNDYrWS9iR1ZyeURX?=
 =?utf-8?B?ZDJKRUJjbjlvVDU1U3IvV05zRTRRSTFETG1FS2RBTWtzdkpwcW1TL2RGU1NK?=
 =?utf-8?Q?r/DoI1IDxJu9K7icBV9BMuJdL2riELStcs73sAuMTk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <16BF070614A7604BB2F4C50596690B67@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c355f32c-f157-48ad-6d03-08da9c155ad9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 21:07:55.8635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8JrviAOI+F1PhHT/E9E6fcsw6IaEpeg09+TNpIPiFbJVpxUsn2h1inxuV0wc8c4K218PNse9AofIy0zPUdH7jTuFOi+JADoM4HLHapBeNd7GU/25ZadMx3K4WlIx5k1PJ5AYBWF70OwYsJXodoSe4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7137
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [CI] PR for DMC v2.071 for DG2
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

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBmMDliZWJmMzFiMDU5MGJkYzg3NWQ3
MjM2YWE3MDUyNzk1MTBjZmQwOg0KDQogIGFtZGdwdTogdXBkYXRlIHllbGxvdyBjYXJwIERNQ1VC
IGZpcm13YXJlICgyMDIyLTA5LTEzIDA4OjAyOjIzIC0wNDAwKQ0KDQphcmUgYXZhaWxhYmxlIGlu
IHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoNCg0KICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9kcm0vZHJtLWZpcm13YXJlIGRnMl9kbWNfdjIuMDcxDQoNCmZvciB5b3UgdG8gZmV0Y2ggY2hh
bmdlcyB1cCB0byA0YjA1ODQ1YjgyZDgyZjhmYzE1MzI2MTExMTFhMmVmNmUyZWNkYTgxOg0KDQog
IGk5MTU6IEFkZCBETUMgdjIuMDcxIGZvciBERzIgKDIwMjItMDktMjEgMTM6NDg6NDUgLTA3MDAp
DQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCk1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaSBQcmFkZWVwICgxKToNCiAgICAg
IGk5MTU6IEFkZCBETUMgdjIuMDcxIGZvciBERzINCg0KIFdIRU5DRSAgICAgICAgICAgICAgICAg
ICAgfCAgIDMgKysrDQogaTkxNS9kZzJfZG1jX3ZlcjJfMDcxLmJpbiB8IEJpbiAwIC0+IDIyMjMy
IGJ5dGVzDQogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCiBjcmVhdGUgbW9kZSAx
MDA2NDQgaTkxNS9kZzJfZG1jX3ZlcjJfMDcxLmJpbg0KDQo=
