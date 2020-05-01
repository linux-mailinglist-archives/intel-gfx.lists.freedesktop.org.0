Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DADF1C18F1
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 17:07:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB816ECCA;
	Fri,  1 May 2020 15:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 428 seconds by postgrey-1.36 at gabe;
 Fri, 01 May 2020 15:07:15 UTC
Received: from us1mail01.teledyne.com (us1mail01.teledyne.com
 [140.165.202.241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E9216ECCA
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 15:07:14 +0000 (UTC)
IronPort-SDR: hE150GLyGvULB3o/3Ae+YjPODhFfPCSMZ+lBCT9BQ7lzKigruMl1L3hTbZUNXd7RmyTncC9V8C
 Ebll1Y8NqfpfZ1dts4H6pudOAzVOhpA+wLEMhWYN9hx5TKf2GOkkzWmmtv0GlQVT40KZ6Z15z2
 a3rYtgevp3QB8A+tK43pSEIQJnx/P7MAnsNg6mf+8LnLKv69ZJCZ3FVUi5v5WKTanlOPFXZZp4
 ZfKMV1ecJ0/lcyX1QDB/o8nrQQmE9lSLGlH/7HgHapG4TfcIqH5Shyprz42R2koVn7yTYHrRlB
 HTw=
IronPort-PHdr: =?us-ascii?q?9a23=3A/1l5VBRGBB3JPKEsl7B8H3qVC9psv+yvbD5Q0Y?=
 =?us-ascii?q?Iujvd0So/mwa67ZRyEt8tkgFKBZ4jH8fUM07OQ7/m9HzJfqsbZ+Fk5M7V0Hy?=
 =?us-ascii?q?cfjssXmwFySOWkMmbcaMDQUiohAc5ZX0Vk9XzoeWJcGcL5ekGA6ibqtW1aFR?=
 =?us-ascii?q?rwLxd6KfroEYDOkcu3y/qy+5rOaAlUmTaxe7x/IAi2oAnLt8Qbg4RuJ6Utxh?=
 =?us-ascii?q?DUvnZGZuNayH9yK1mOhRj8/MCw/JBi8yRUpf0s8tNLXLv5caolU7FWFSwqPG?=
 =?us-ascii?q?8p6sLlsxnDVhaP6WAHUmoKiBpIAhPK4w/8U5zsryb1rOt92C2dPc3rUbA5XC?=
 =?us-ascii?q?mp4ql3RBP0jioMKiU0+3/LhMNukK1boQqhpx1hzI7SfIGVL+d1cqfEcd8HWW?=
 =?us-ascii?q?ZNQsNdWipcCY2+coQPFfIMM+ZGoYfgu1sAoxiwBQeuC+Pu1jBGiXD50LYm0+?=
 =?us-ascii?q?s6DQ3KwBAsE84MvXnSsd77NL0SUeewzKTQwznMYPRW2TPg54jNaB8hp+mAVq?=
 =?us-ascii?q?93f8rQykkvFxnKjlSUqYDrIjiY0eMDs2mY7+pgT+2vimonpxt+rTiowscjl4?=
 =?us-ascii?q?zJiZgTyl3f6yt23oI1KsOlR097Z96rDoFcuD2dN4tzW84vRXxjtykmxLMco5?=
 =?us-ascii?q?G7YDQKx4o9xx7Zc/GJfJWF7xDsWeqPIjp1mmxpday8ihiy/0as1O3yW8u63V?=
 =?us-ascii?q?hKrCdLnMfBuH8D2hHQ98SKS+dw8lqh1DiB2A7e9uBJLEYpnqTYM54s2qM8m5?=
 =?us-ascii?q?UPvUjZAyP7mUX7gLWIekgr+uWk8erqbqv+qpOBOIJ4lhvyPrkvl8G/G+g1Mh?=
 =?us-ascii?q?YCU3KG9eii0LDv5VP1TbRWgvA4l6TVrYzWKt8aq6O8AAJZzoYu5hOwAji61d?=
 =?us-ascii?q?kVmGQLIVNDdRmalYbmIUvOL+r9DfqnhlSslypkyO7eM736B5XNMmDDkLD8fb?=
 =?us-ascii?q?Zh80JcyBQ8zdRY559MBL4PPe//Vlb+u9LCCRE3Lg26z//gBthg14wSRWyCDr?=
 =?us-ascii?q?WHPq3cs1CE/PwhLPeIZIALpTn8K/4l6OD0gXAlnl8deLGl3ZoRaH+mAvRrO1?=
 =?us-ascii?q?iVbHXwjtsbDGsHvwozQPb0hFCNUTNffXi/U7wk6jE+Eo2mDIPDRo63gLyG2S?=
 =?us-ascii?q?e2BppYZmFFClCMC3jodoGEV+0DZyKVJs9ujzkEWqKnS4I6yRGhqgv6xKR6Ie?=
 =?us-ascii?q?vU/C0Xq4jv28Ry5+3WjR0y7yB7D9yB02GRSGF5hnkISCUz3K9lpUx9y1GD0a?=
 =?us-ascii?q?dijPxdD9Bc++hEUgY8NZ7A0eN6D8r+VR7GfteMUFymWMmpASktTtItxN8De1?=
 =?us-ascii?q?19G8i4jh/dxCqqA6UZl7+WBJwx6K3cxWL9J8Vgy3bc0akhjkIrQspJNW26mK?=
 =?us-ascii?q?F/8xLfCJLOk0Wcj6yqb7gT3DbR9GefymqDpEBYUAhsUarbWXATf0TWrdr250?=
 =?us-ascii?q?7ZS7+uCK8nMhdaycKYJKtKcMPmgktbS/j9I9TeYH6xm2CoBRqSwbOMdoXqKC?=
 =?us-ascii?q?0h23DnAU0NlwEV8n+DfSN2Uj2opmvaDTphHFepaGvt9/VzrDWwSUpinC+QaE?=
 =?us-ascii?q?g0nYSy/hIQjPrYA9YS3bINuSNr42FRHVW91tPSTeSHowZkdaN0Xd457VtW02?=
 =?us-ascii?q?+fvAt4aM/zZ5t+j0ITJlwk93jl0A96X8AZyZBw9iEj0RZyJKSE0VhIazKf29?=
 =?us-ascii?q?XqN6bKLnXppUnwOa/Qxlzalt2R//RH5Pc5rgDluwekXgon/m582tZYm32b+t?=
 =?us-ascii?q?3RDQUUXJ6wNyR/9xVzq7zAJCVo4YTS2C5tN7W5tnnJ3Nd6TOcgwwyrKtFYNq?=
 =?us-ascii?q?7MHQTuEsocUs6pLuFim1WgYh8eeu5I86thA86ieveX3qPtN+Flzz8=3D?=
X-IPAS-Result: =?us-ascii?q?A2EHAAArHaxe/yD1pYxjAxoBAQEBAQEBAQEBAwEBAQESA?=
 =?us-ascii?q?QEBAQICAQEBAUCBMwUBAQEBCwGBUykoBW5YHTwKhBiDRgOEWIhtmDKBLhSBX?=
 =?us-ascii?q?wgLAQEBAQEBAQEBBgEBGAsKAgQBAQGBA4NAAheCGiQ0CQ4CAwEBAQMCBQEBA?=
 =?us-ascii?q?QUBAQEBAQEEAgEBAQECaQQBAQcKAgGETiEBAwcKATcMgjspAYFsgTNCAQEBA?=
 =?us-ascii?q?QMBEREEDSsMDgwEAgEIDQQEAQEBAgIjAwICAiYKFAEICAIECgQFCBMHgwWCf?=
 =?us-ascii?q?AEOqQwCgTmIYXZ/MxqDZ4ZzCQGBBCoBhSmIcz6BEUOCTT6BDoMLARIBIwUQC?=
 =?us-ascii?q?gsMAg2CSzOCLQSOXIJloQMDBAOCRogUiXiGG4JbgQuMOwMQjGCYM4EtjxWBO?=
 =?us-ascii?q?oJ2AgQCBAUCDgEBBYFSOmZwcIM5CUcYkFsXgQMBCIJDilZ0AjEDAgYBBwEBA?=
 =?us-ascii?q?wl8jS8BgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.73,339,1583222400"; d="scan'208";a="17388885"
Received: from unknown (HELO US1-VPMSG-MBX03.TDY.Teledyne.com)
 ([140.165.245.32])
 by us1mail01.tdy.teledyne.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 01 May 2020 08:00:06 -0700
Received: from US1-VPMSG-MBX03.TDY.Teledyne.com (140.165.245.32) by
 US1-VPMSG-MBX03.TDY.Teledyne.com (140.165.245.32) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 1 May 2020 10:00:02 -0500
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (140.165.245.200)
 by US1-VPMSG-MBX03.TDY.Teledyne.com (140.165.245.32) with Microsoft
 SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3 via Frontend Transport; Fri, 1 May 2020 10:00:02 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h/nhh7gGOmXEDefs9/asPnwu4HkdZ5dafuGcpcXTkOBbdMAq9QRKJXTMTI4WtJrE2nPVZS1B9ew2v6MmVF/uk7NG4RtrRt065VgeLqlmBWIksEAQtlY9lVwRhgAU+Y1QddfgAg9d3LZU2gmeMcsXSWs7BDXlBCK7aYFakmW38gXpIfBm3jKInfvbvkVwXRbJlC+oMBRLg7eLGFR+tZF5KubK0WixCebJvImqEOyzV3GNaHrHkIbFA+3QFcOxrfKcaQz8tFsorJtnUqWsCsi/rmsf93oPtNNwI0ws5Av1W24bfw+slKykbsECbCG7bD2UkUSp4Kffqnhgo6C9ze0E6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OYHORKVlsojyi1vkwA1r74fsxefk2vXBob/nYcO7qtA=;
 b=ZR0HVqPF7I9Q3pUlRKk6pxxd1fOtjL5nnDxe3oE3vn4NG/1V1h8CswBQjOWbq3TjG1bkW3Zw68KzusRjCbB3rtomLx/9lZPxmw07lWZsqkKfMcI3QNPHXA+IrJ8OMcLCiO7wzV7dbjdnhn1DjHLArtQ/+mWtMN8L5RFJIrlayky3R3B87UoUQKcz3z8pJzrmFEowyt6dbtBYHqm9TAiJTfsv/BuvARV3QKdajEx38RwURbapCTzJNQCJ0LnQhheLISEG+LEGBfnO3E1QJr9UpZ1nRjRt37PLHwOLfU7YcKCbIrt4W5rwefn2RMn42zKw5MPsoi7wveic9rZCrzkt9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=teledyne.com; dmarc=pass action=none header.from=teledyne.com;
 dkim=pass header.d=teledyne.com; arc=none
Received: from SN6PR14MB2464.namprd14.prod.outlook.com (2603:10b6:805:4c::16)
 by SN6PR14MB2352.namprd14.prod.outlook.com (2603:10b6:805:4b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 1 May
 2020 15:00:01 +0000
Received: from SN6PR14MB2464.namprd14.prod.outlook.com
 ([fe80::d914:2f48:1db7:fa93]) by SN6PR14MB2464.namprd14.prod.outlook.com
 ([fe80::d914:2f48:1db7:fa93%7]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 15:00:01 +0000
From: "Voldman, Mikhail" <Mikhail.Voldman@Teledyne.com>
To: Ramalingam C <ramalingam.c@intel.com>
Thread-Topic: i915 HDCP 2.2 TX encryption on Teledyne test instrument
Thread-Index: AdWTRw2BG0Bp65ShSKOnMlnbnuJPdAATIS4AACO6JPAAD49FACJ7W1aQABeTM4AARy0uwA==
Date: Fri, 1 May 2020 15:00:01 +0000
Message-ID: <SN6PR14MB2464414D9322A8B88482540D85AB0@SN6PR14MB2464.namprd14.prod.outlook.com>
References: <BN8PR14MB3156745AD1ACA0DE7181E50E857F0@BN8PR14MB3156.namprd14.prod.outlook.com>
 <20191105044329.GA19142@intel.com>
 <BN8PR14MB3156BC64F3EB8DDAB2AC5295857E0@BN8PR14MB3156.namprd14.prod.outlook.com>
 <20191106051159.GA32360@intel.com>
 <SN6PR14MB24642D79A1E77C667D8B658F85AD0@SN6PR14MB2464.namprd14.prod.outlook.com>
 <20200430050145.GA14647@intel.com>
In-Reply-To: <20200430050145.GA14647@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=Teledyne.com;
x-originating-ip: [140.165.52.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c239eb00-de78-4ba9-5095-08d7ede052b2
x-ms-traffictypediagnostic: SN6PR14MB2352:
x-microsoft-antispam-prvs: <SN6PR14MB23525F11F60A7D3443E94A6585AB0@SN6PR14MB2352.namprd14.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0390DB4BDA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR14MB2464.namprd14.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(39860400002)(376002)(396003)(346002)(2906002)(71200400001)(33656002)(52536014)(66446008)(64756008)(66946007)(66556008)(66476007)(53546011)(6506007)(26005)(478600001)(76116006)(55016002)(9686003)(4326008)(8676002)(8936002)(86362001)(54906003)(6916009)(186003)(7696005)(316002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WqQk8TOoh/1xiNzBAKd1uMfArzt2VI794/oxCwXb+4pkJK81KsGfj8oUNBo/fdBbyvntMRMjrZZJ8uJvegHOcmMJeoS1XfgyQBy2usZnF06pzfal2qRF66uSuhwbkMsrs9CPKv28z6oYb7ZEgUSQM1lHPIQsjB5V0l40THgh2432mLDxPaqdJZ3gdSCkOUCHd9OqhoU2HmnRMVV/KJtSa/2VSEJQLY52Q+fAJlP9JcmVK6U7kwqOEe6SFed5p4lLNd0pkSzqPrxcRPnV40N/0thFulwah+81nZqlWblzhfaVxkDfvsPzitgLYcMOWDhuZ46o3v21EroetdP2ayIqPfVc42iD/Z+kqgDbnDs/90DGLAkpMX2rhwg7kx67NSnbuSkydc4Bz7sxxt/0FTqr397Z1xBvTsphvOFC255wV88soE4f6WATIagaY4ObV8DwFWIJayVQE080nk8Ot1Ffw6JFzyE1o0lKoKwH5AloRm+4uQeNvBsMnU7MkYmwNAZrulzavmr5VEP74NFPz7nHqg==
x-ms-exchange-antispam-messagedata: jlKBWgLZ7uiqTLIzgmVU7Q/1/uG0B4MW90L+1bo9Nv9aTZ3BEmHeGdhLMawCkaF7PCGmSSKfMVoIDHGGY/Yxenl3Aebe0rSg0NBgcQBQHzhe+foeeuVNUm7ApD27OVhOIExoq5PgJnub9IKrgCLi8RFih44MQjXSS+D11oQ6hoH8BGtcpcHb3q5BoNp5wTHVvBNtOq10sbMVmggHF0dDXDB8SC1ebNwWt8izoQeYq/+nBP18DLeXcCpMNkFwiH41BqtnS1N8beDmoshN9mjWzFinoxi4st3410zj/uRJVJIihpha2I8OJrVMfj9GnwVy0P9e/AQnwZd9lNetobomhGDzzIOvJUVJsFzfgZid7cCEyXboO5VHG3FotJ2SpdlSpWUOii7JLz3og7xNuK5hK0yiMCRMOtt00R6FqhL5PuMC2nikI7VCPMF+qYy3vcDst19xJDoHMcoT+q53d6SB8gBsI2xmZTuM7+6z/MOd18uWmpn7iAeG/AV/lSekg+L1CLbn16CtvMa5PueEtmUqR9dS/e2flE5sdFknsJY7oYoJgM+gAgJxM3fiaDnw88bnfJiBA8pchtFPlEzfe1FS5Cxvvgi26F9LxxDn91OsL0xHpqOThO1i6uNKHKdgSfJik7xyXtZFbdKnvsk0iv1ouJkxC7UnQ9daAcxUddUdmA5ssKEGkXgS+VN1xtiJWGPlimmq2V+WQ10HbuHy34S5Yy/hohL4vv0rWSkOSfThRiWHzV3uoQg0DaJ5NPM9x98LGn2oSrCZJRJ/gUXCVWWu60DzM48a+BJsgeXa1WUE3co=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c239eb00-de78-4ba9-5095-08d7ede052b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 15:00:01.0810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e324592a-2653-45c7-9bfc-597c36917127
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lg79cClrJ7R51XdOW9VFgod9EzO+GViG3DejmshBgRRL4Rt+uqNN7w/6fal4wGvfScBoArGf/272LMPS0gWHw8z378dkO+bcCORfi1Nq3LE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR14MB2352
X-OriginatorOrg: Teledyne.com
X-TM-AS-Product-Ver: SMEX-12.0.0.1727-8.500.1020-25390.000
X-TM-AS-Result: No--26.751400-8.000000-31
X-TM-AS-MatchedID: 150567-704706-188019-390448-700279-121155-704380-702102-7
 80014-187125-139006-702481-700273-106660-780048-871061-705249-139010-703789
 -704704-705271-703325-703115-702558-703140-703664-700737-700716-701342-7003
 37-701091-703954-700378-701880-705153-702719-701429-703532-703208-703061-10
 1438-702031-110462-184130-701559-701589-780037-703117-702617-703408-701270-
 703173-390249-703812-702937-703215-703045-700135-702754-704922-704418-70035
 3-700715-703958-701478-701477-702251-105040-701708-700263-700845-139705-101
 263-63-148004-148046-148133-20032-20043-24831-42000-42003-190014
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
Subject: Re: [Intel-gfx] i915 HDCP 2.2 TX encryption on Teledyne test
 instrument
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Kurmi Suresh Kumar <suresh.kumar.kurmi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzLi4uLg0KDQpNaWtoYWlsIFZvbGRtYW4NClN5c3RlbSBBcmNoaXRlY3QNCg0KVGVsZWR5
bmUgTGVDcm95LCBQcm90b2NvbCBTb2x1dGlvbnMgR3JvdXANCjIxMTEgQmlnIFRpbWJlciBSb2Fk
DQpFbGdpbiwgSUzCoCA2MDEyMw0KZW1haWwgYWRkcmVzczrCoCBtaWtoYWlsLnZvbGRtYW5AdGVs
ZWR5bmUuY29tDQo4NDctODg4LTA0NTAgeDEzNg0KDQpTZW5kIG1lIGEgZmlsZSBzZWN1cmVseQ0K
DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBSYW1hbGluZ2FtIEMgPHJhbWFs
aW5nYW0uY0BpbnRlbC5jb20+IA0KU2VudDogVGh1cnNkYXksIEFwcmlsIDMwLCAyMDIwIDEyOjAy
IEFNDQpUbzogVm9sZG1hbiwgTWlraGFpbCA8TWlraGFpbC5Wb2xkbWFuQFRlbGVkeW5lLmNvbT4N
CkNjOiBLdXJtaSBTdXJlc2ggS3VtYXIgPHN1cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+OyBp
bnRlbC1nZnggPGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc+DQpTdWJqZWN0OiBSZTog
aTkxNSBIRENQIDIuMiBUWCBlbmNyeXB0aW9uIG9uIFRlbGVkeW5lIHRlc3QgaW5zdHJ1bWVudA0K
DQotLS1FeHRlcm5hbCBFbWFpbC0tLQ0KDQpPbiAyMDIwLTA0LTI5IGF0IDE4OjEyOjMyICswMDAw
LCBWb2xkbWFuLCBNaWtoYWlsIHdyb3RlOg0KPiBIaSBSYW0sDQo+IA0KPiBUaGFuayB5b3UgZm9y
IHlvdXIgaGVscCwgaW4gdGhlIHBhc3QuIA0KPiBXZSBjYW4gY29udHJvbCBIRENQIG9uIG91ciBw
cm9kdWN0cyBhcyBuZWVkZWQuDQo+IA0KPiBPbmUgaXNzdWUgb24gdGhlIG5ldyBtb3RoZXJib2Fy
ZCB1c2VkIGluIG91ciBwcm9kdWN0Lg0KPiBJbiB0aGlzIGNhc2UsIGk5MTUgYWR2ZXJ0aXNlcyBp
dHNlbGYgYXMgRFAtMSBzaW5rIHJlcGVhdGVyIGFuZCBhdXRoZW50aWNhdGVkIGFzIEhEQ1AgMS40
IGNhcGFibGUgZGV2aWNlLCBidXQgZG93bnN0cmVhbSBIRE1JIGRldmljZSBpcyBIRENQIDIuMyBj
YXBhYmxlIGFuZCBjb3JyZWN0bHkgYXV0aGVudGljYXRlZCBhcyBIRENQIDIuMy4gDQpJIGFzc3Vt
ZSB0aGlzIGlzIGR1ZSB0byB0aGUgbHNwY29uIHVzZWQgaW4geW91ciBtb3RoZXJib2FyZC9Tb0Mg
aXRzZWxmLg0KV2hpY2ggaXMgY29udmVydGluZyBEUC0+SERNSS4gRm9yIGk5MTUgTFNQQ29uIGlz
IGV4dGVybmFsIGRldmljZSBhdXRoZW50aWNhdGUgd2l0aCBpdCBiYXNlZCBvbiB0aGUgTFNQQ29u
J3MgaGRjcCBjYXBhYmlsaXR5IGFuZCByZXF1ZXN0ZWQgSERDUCB0eXBlLiBBbmQgYXV0aGVudGlj
YXRpb24gYmV0d2VlbiBMU1BDb24gYW5kIERpc3BsYXkgc2luayBjb25uZWN0ZWQgdG8gaXQgaXMg
TFNQQ29uJ3MgcmVzcG9zaWJpbGl0eS4gSTkxNSB3aWxsIGFzc3VtZSBMU1BDb24gaGFzIGZvbGxv
d2VkIHRoZSBIRENQIHNwZWMgZm9yIHJlcGVhdGVyLg0KDQotUmFtDQo+IElzIGl0IGFueSB3YXkg
SSBjYW4gZGV0ZXJtaW5lIHdoYXQgSERDUCBsZXZlbCBkb3duc3RyZWFtIGRldmljZSBpcyBhdXRo
ZW50aWNhdGVkPyAgDQo+IExvY2sgb2YgaTkxNSBkb2N1bWVudGF0aW9uIG1ha2VzIHRoaXMgbm90
IHZlcnkgb2J2aW91cy4gDQo+IENhbiB5b3UganVzdCBwb2ludCB1cyBpbiB0aGUgcmlnaHQgZGly
ZWN0aW9uPw0KPiANCj4gVGFoayBZb3UsDQo+IA0KPiBNaWtoYWlsIFZvbGRtYW4NCj4gU3lzdGVt
IEFyY2hpdGVjdA0KPiANCj4gVGVsZWR5bmUgTGVDcm95LCBQcm90b2NvbCBTb2x1dGlvbnMgR3Jv
dXANCj4gMjExMSBCaWcgVGltYmVyIFJvYWQNCj4gRWxnaW4sIElMwqAgNjAxMjMNCj4gZW1haWwg
YWRkcmVzczrCoCBtaWtoYWlsLnZvbGRtYW5AdGVsZWR5bmUuY29tDQo+IDg0Ny04ODgtMDQ1MCB4
MTM2DQo+IA0KPiBTZW5kIG1lIGEgZmlsZSBzZWN1cmVseQ0KPiANCj4gDQo+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVs
LmNvbT4NCj4gU2VudDogVHVlc2RheSwgTm92ZW1iZXIgNSwgMjAxOSAxMToxMiBQTQ0KPiBUbzog
Vm9sZG1hbiwgTWlraGFpbCA8TWlraGFpbC5Wb2xkbWFuQFRlbGVkeW5lLmNvbT4NCj4gQ2M6IEt1
cm1pIFN1cmVzaCBLdW1hciA8c3VyZXNoLmt1bWFyLmt1cm1pQGludGVsLmNvbT47IGludGVsLWdm
eCANCj4gPGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc+DQo+IFN1YmplY3Q6IFJlOiBp
OTE1IEhEQ1AgMi4yIFRYIGVuY3J5cHRpb24gb24gVGVsZWR5bmUgdGVzdCBpbnN0cnVtZW50DQo+
IA0KPiAtLS1FeHRlcm5hbCBFbWFpbC0tLQ0KPiANCj4gTW92aW5nIHRvICNpbnRlbC1nZngNCj4g
DQo+IEhpLA0KPiANCj4gR2xhZCB0aGF0IEkgY291bGQgaGVscCB5b3UhDQo+IA0KPiBPbiAyMDE5
LTExLTA1IGF0IDIxOjU2OjI4ICswMDAwLCBWb2xkbWFuLCBNaWtoYWlsIHdyb3RlOg0KPiA+IEhl
bGxvIFJhbWFsaW5nYW0sDQo+ID4gDQo+ID4gVGhhbmsgeW91IGZvciBxdWljayByZXNwb25zZS4g
DQo+ID4gWW91ciBpbmZvcm1hdGlvbiBpcyB2ZXJ5IGhlbHBmdWwuIA0KPiA+IEJ1dCBjYW4geW91
IGVsYWJvcmF0ZToNCj4gPiANCj4gPiBJbiB5b3VyIHByb2R1Y3QsIElmIHlvdSB3YW50IHRvIGVu
YWJsZSB0aGUgSERDUCBhbHdheXMgYmFzZWQgb24gdGhlIA0KPiA+IHNpbmsgY2FwYWJpbGl0eSwg
c2V0IHRoZSAiQ29udGVudCBwcm90ZWN0aW9uIiB0byBERVNJUkVEIHN0YXRlIGFsb25nIA0KPiA+
IHdpdGggZGVzaXJlZCBjb250ZW50IHR5cGUuICBbTVZdIHNob3VsZCBJIHNldCBERVNJUkVEIHBy
b3RlY3Rpb24gbGV2ZWwgYXMgRFJNIG1hc3Rlcj8NCj4gVGhpcyBuZWVkcyBhZGRpdGlvbmFsIGtl
cm5lbCBwYXRjaCBmb3IgeW91ciBwcm9kdWN0IHRvIHNldCB0aGUgZGVzaXJlZCBzdGF0ZSBhcyBk
ZWZhdWx0IHN0YXRlIG9mIHRoZSBwcm9wZXJ0eSBhdCB0aGUgY3JlYXRpb24uDQo+ID4gDQo+ID4g
QXMgdGhlc2UgYXJlIHByb3BlcnRpZXMsIG5vbiBEUk0gTWFzdGVycyBjYW4gb25seSByZWFkIHRo
ZW0uIGNhbiBzZXQgDQo+ID4gdGhlbS4gW01WXSBkbyB5b3UgbWVhbjogIiBub24gRFJNIE1hc3Rl
cnMgY2FuIG9ubHkgcmVhZCB0aGVtLCBidXQgIGNhbid0IHNldCB0aGVtLiINCj4gWWVzLg0KPiA+
IENhbiBJIHVzZSBNRUkgaW50ZXJmYWNlIHRvIGNvbnRyb2wgSERDUD8NCj4gTm90IG5lZWRlZCBp
ZiB5b3Ugc2V0IHRoZSBkZWZhdWx0IHN0YXRlIGFzIGRlc2lyZWQuDQo+IC1SYW0NCj4gPiANCj4g
PiBNaWtoYWlsIFZvbGRtYW4NCj4gPiBTeXN0ZW0gQXJjaGl0ZWN0DQo+ID4gDQo+ID4gVGVsZWR5
bmUgTGVDcm95LCBQcm90b2NvbCBTb2x1dGlvbnMgR3JvdXANCj4gPiAyMTExIEJpZyBUaW1iZXIg
Um9hZA0KPiA+IEVsZ2luLCBJTMKgIDYwMTIzDQo+ID4gTm90ZSBuZXcgZW1haWwgYWRkcmVzczrC
oCBtaWtoYWlsLnZvbGRtYW5AdGVsZWR5bmUuY29tDQo+ID4gODQ3LTg4OC0wNDUwIHgxMzYNCj4g
PiANCj4gPiBTZW5kIG1lIGEgZmlsZSBzZWN1cmVseQ0KPiA+IA0KPiA+IA0KPiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNA
aW50ZWwuY29tPg0KPiA+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgNCwgMjAxOSAxMDo0NCBQTQ0K
PiA+IFRvOiBWb2xkbWFuLCBNaWtoYWlsIDxNaWtoYWlsLlZvbGRtYW5AVGVsZWR5bmUuY29tPg0K
PiA+IENjOiBLdXJtaSBTdXJlc2ggS3VtYXIgPHN1cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+
DQo+ID4gU3ViamVjdDogUmU6IGk5MTUgSERDUCAyLjIgVFggZW5jcnlwdGlvbiBvbiBUZWxlZHlu
ZSB0ZXN0IGluc3RydW1lbnQNCj4gPiANCj4gPiAtLS1FeHRlcm5hbCBFbWFpbC0tLQ0KPiA+IA0K
PiA+IE9uIDIwMTktMTEtMDQgYXQgMjA6NDI6NDkgKzAwMDAsIFZvbGRtYW4sIE1pa2hhaWwgd3Jv
dGU6DQo+ID4gPiBIZWxsbyBSYW1hbGluZ2FtLA0KPiA+ID4gDQo+ID4gPiBXZSBleGNoYW5nZWQg
bnVtYmVyIG9mIGUtbWFpbHMgZmV3IG1vbnRocyBhZ28gcmVnYXJkaW5nIExpbnV4IGk5MTUgSERD
UCAyLjIgZW5jcnlwdGlvbiAgc3VwcG9ydCBpbiB0aGUgbmV3IFRlbGVkeW5lIHZpZGVvIHRlc3Qg
aW5zdHJ1bWVudC4NCj4gPiA+IFRoYW5rcyBmb3IgeW91ciBoZWxwIHdlIHdlcmUgYWJsZSB0byBj
b250cm9sIEhEQ1AgMi4yIGVuY3J5cHRpb24gYXMgRFJNIG1hc3RlcnMuDQo+ID4gPiANCj4gPiA+
IFVuZm9ydHVuYXRlbHkgb3VyIHByb2R1Y3QgcmVxdWlyZW1lbnQgc3BlY2lmaWVkIHRoYW4gd2Ug
bmVlZCB0byAgZW5hYmxlIEhEQ1AgMi4yIGFsd2F5cyBpZiBhdHRhY2hlZCBtb25pdG9yIGNhcGFi
aWxpdGllcyBzaG93cyBIRENQIDIuMiBzdXBwb3J0Lg0KPiA+ID4gQWxzbyBpOTE1IGJhc2VkIFRY
IHJlcXVpcmVkIHRvIGV4ZWN1dGUgSERDUCAyLjIgcmUtYXV0aGVudGljYXRpb24gaWYgU2luayBI
UEQgaXMgZGV0ZWN0ZWQuDQo+ID4gPiANCj4gPiA+IElzIGN1cnJlbnQgSW50ZWwgaTkxNSBrZXJu
ZWwgZHJpdmVyIGltcGxlbWVudGF0aW9uIGNhbiBzdXBwb3J0IGRlc2lyZWQgZnVuY3Rpb25hbGl0
eT8gRG8geW91IGhhdmUgcGxhbnMgdG8gc3VwcG9ydCB0aGlzPw0KPiA+IA0KPiA+ICJIRENQIGFs
d2F5cyIgd2lsbCBuZXZlciBiZSBhbiB1cHN0cmVhbSBzb2x1dGlvbi4gYWx3YXlzIHVzZXJzcGFj
ZSANCj4gPiBkcml2ZW4uDQo+ID4gDQo+ID4gSW4geW91ciBwcm9kdWN0LCBJZiB5b3Ugd2FudCB0
byBlbmFibGUgdGhlIEhEQ1AgYWx3YXlzIGJhc2VkIG9uIHRoZSANCj4gPiBzaW5rIGNhcGFiaWxp
dHksIHNldCB0aGUgIkNvbnRlbnQgcHJvdGVjdGlvbiIgdG8gREVTSVJFRCBzdGF0ZSBhbG9uZyAN
Cj4gPiB3aXRoIGRlc2lyZWQgY29udGVudCB0eXBlLg0KPiA+IA0KPiA+IEFzIHRoZXNlIGFyZSBw
cm9wZXJ0aWVzLCBub24gRFJNIE1hc3RlcnMgY2FuIG9ubHkgcmVhZCB0aGVtLiBjYW4gc2V0IA0K
PiA+IHRoZW0uDQo+ID4gDQo+ID4gSG9wZSB5b3UgYXJlIHVuYmxvY2tlZC4gQWxsIHRoZSBiZXN0
IQ0KPiA+IA0KPiA+IC1SYW0NCj4gPiA+IA0KPiA+ID4gQXJlIGN1cnJlbnQgaTkxNSBhbGxvdyBj
b250cm9sIEhEQ1AgZW5jcnlwdGlvbiBieSBOT1QgRFJNIG1hc3RlciBhcHBsaWNhdGlvbj8NCj4g
PiA+IA0KPiA+ID4gQW55IHN1Z2dlc3Rpb24gb3IgYWR2aWNlIGJ5IEludGVsIEhEQ1AgMi4yIGV4
cGVydHMgd2lsbCBiZSByZWFsbHkgYXBwcmVjaWF0ZWQuDQo+ID4gPiANCj4gPiA+IEJlc3QgUmVn
YXJkcywNCj4gPiA+IA0KPiA+ID4gTWlraGFpbCBWb2xkbWFuDQo+ID4gPiBTeXN0ZW0gQXJjaGl0
ZWN0DQo+ID4gPiBbY2lkOmltYWdlMDAxLmdpZkAwMUQyRDBBNy45MTkzMjBBMF0NCj4gPiA+IFRl
bGVkeW5lIExlQ3JveSwgUHJvdG9jb2wgU29sdXRpb25zIEdyb3VwDQo+ID4gPiAyMTExIEJpZyBU
aW1iZXIgUm9hZA0KPiA+ID4gRWxnaW4sIElMICA2MDEyMw0KPiA+ID4gTm90ZSBuZXcgZW1haWwg
YWRkcmVzczogIA0KPiA+ID4gbWlraGFpbC52b2xkbWFuQHRlbGVkeW5lLmNvbTxtYWlsdG86bWlr
aGFpbC52b2xkbWFuQHRlbGVkeW5lLmNvbT4NCj4gPiA+IDg0Ny04ODgtMDQ1MCB4MTM2DQo+ID4g
PiANCj4gPiA+IFNlbmQgbWUgYSBmaWxlDQo+ID4gPiBzZWN1cmVseTxodHRwczovL3RyYW5zZmVy
ZWFzdC50ZWxlZHluZS5jb20vZmlsZWRyb3AvbWlraGFpbC52b2xkbWENCj4gPiA+IG5ADQo+ID4g
PiB0ZWxlZHluZS5jb20+DQo+ID4gPiANCj4gPiANCj4gPiANCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
