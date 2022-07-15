Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10568575B04
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jul 2022 07:33:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7D2112E72;
	Fri, 15 Jul 2022 05:33:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E162113BB6
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 05:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657863226; x=1689399226;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=nUaYUbkXEWC+rk1Td0r9yh6KQxphAAN61TcDb2ub8ms=;
 b=cwyVu4Ug6M7wE0MzlIa9wMY+9jFJ9A1eqvz/2VFgqz9BH3TeAYcqsjtU
 qS2mdmf7vBnjDmWehh+6A+K6XCSUm2kQASCNDyO9fOGMTvPwKf3wuVbKq
 WzmjFFmwcqmohqqFmdApxfmx7zwuDz6uZFKzZa4RJaz2Q+hs6CxYOfMue
 H3k4ExF3tcXv1J3VIsN1zOVVllkVGIeH2vMHEXjzTroWP5Y1t1LmUjKhw
 XZ2fJyoEXunEm9mny3bLh5SflMMqrwNCy0yTS+HmjKo2e5o9Yu64b8Xpr
 ujeMwHzjAvY+zHu8FzpGsxGa/oALpIGcjE7bNNBe0YGlB2hh3PJq6BsqM Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="268730171"
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="268730171"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 22:33:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="600375627"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 14 Jul 2022 22:33:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 22:33:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 22:33:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Jul 2022 22:33:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Jul 2022 22:33:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RTSZLOqfzuldtg5REPuRZTn6LTp7GdPutHTatruS3Iop+H2VwofEj2gqHCGAuYgA1DXWEWAatiKLHa0gUQeyWt5ilnWW2FawMocyVUKyYpwhQPvRreqbxlTSFR+pGxbThUdeKC5G8fR364AomcE6C5tdvaA5kQsYtuLj5BMPSeXNOUbiM5Xn4k3z/s1hB0pOwXxknMEsenL/OMwCF9litzdjjIZpRLwL481CxjgUlquvUk/jYXPFVCIHnbR0BiXOg5rrz07M/vnEPP/uSxG/TYpg6m8INGWau1uOXau7a7WIuBM4lpPdHTgu6JQ4g12L7Hygl9bsWeDA36GKhmoiPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nUaYUbkXEWC+rk1Td0r9yh6KQxphAAN61TcDb2ub8ms=;
 b=NhD24tuHgM/SsMMcLaOyZgfks85IpKsNTdJSQmP8Zm8xgyBWRpyeSjUmuuVZ2nKsxhRvd4sqrbCVZ2YO5NN5LK/AEc9AGc3OOxb6SEFZfo749hwTQzY9A1DUPUedRCc7O362C7bJcJL8HFHrEizPwLLGeWn8HtrPex4uhEqn1IxO8ayfoCDfT6Zpc7h00h+nCbnzI8D49FilgfLJleniKFbGuhblR6YA8sF+gbpK1rS+EipcNyxWJqrxHqaIkUtuKhtwpMZnil7mSic6ezr0ODrwVNE+0BNrTBg5OH/E24B+W5wyDk+EduW1mcQyOSHZJ2AsbxikhbXgnzKkFt/B5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BN6PR1101MB2116.namprd11.prod.outlook.com (2603:10b6:405:58::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.12; Fri, 15 Jul
 2022 05:33:43 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95dc:fd09:6d3f:c52c]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95dc:fd09:6d3f:c52c%3]) with mapi id 15.20.5438.012; Fri, 15 Jul 2022
 05:33:43 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/psr: Disable PSR before disable pipe
Thread-Index: AQHYl5OS821JwWLatUScUSDFooWYRK1+6bwA
Date: Fri, 15 Jul 2022 05:33:43 +0000
Message-ID: <dd78907477a8c19da80cbb1442c0688eb915a004.camel@intel.com>
References: <20220714150755.154985-1-jose.souza@intel.com>
 <20220714150755.154985-2-jose.souza@intel.com>
In-Reply-To: <20220714150755.154985-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a0f770c-9079-4a8f-7e79-08da662394b9
x-ms-traffictypediagnostic: BN6PR1101MB2116:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pqM0QB587H9w4Qrcuc7Tuq0yJ+F+4xLf249wRnv+52LX0wmCma1JCxFI/pVvNdATGIx0MP4x2n61nIWJ3DDxEb7dOn6m23qmKeHsKWVVumBhH1bu660KHxqk/AnyRpXkTTRndkqIxZCmCZ2kK9zTe3/1d+6nKYYRMKHHiJfXHhKwcomCm965u8519HL7a5uLgMTLvnIYFcXBOOIV2PGODyDjURwBYyElcpXPKFkBtADj4OBXjI97yAUsm7JGsdo2Ehkn32yJG+nW2+FYCQn3zN3RiiYo58/TSvVdfSUGUuy58GRd9+HLT/ytFcv2q/WrqbefgITneoKxM2CRoxuGzk4a9prjOgVnd9sws5NwPt3y/lYKMKR3J2jVKi95xuasLd7SG4JHmDG7JM80MJR+3+5Yvply5CpbExJ+mpB8d+9nOlVdGD02ITpZ+AvsJowq8GkTfEpaV1n0VIDjMuDJJT2EA0+05Pbfr+ZRW8tgs9rV1nOKCzXMQKCUF7xrmOJMgWQLK9RYE0o4VY5YfrZb3G/iwKnCbAO/1/bqTs7bdzOL7a93wxRHGSRPzgGLYuDPjCiEvz0m0CKxMLP63Gx68rMG67FonSYUGFXLEyCl9Y0u0Nzv9keIrmVyfmbCp23B3dcG/H+UpwZEuCP+R+jCAQarti/+R4kfltRa5MojeO1xMK0f+UwxEdCg9Se7c7kDMdft8UW2PmqJcyFJCtkuan48ampQBjEmagXSVrEMp5kVWtip+PGJAxCteisDOIqA0sXzre7c1SVMLgy//5KZJwqRTM84xjUV3vdm2nTVdAKXn1bD14UdI7zh6gxo3xjA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(39860400002)(346002)(136003)(376002)(26005)(66476007)(66946007)(6512007)(91956017)(6486002)(66556008)(76116006)(6506007)(64756008)(41300700001)(478600001)(8676002)(86362001)(110136005)(71200400001)(122000001)(4326008)(316002)(83380400001)(6636002)(2616005)(38070700005)(107886003)(82960400001)(186003)(66574015)(8936002)(36756003)(66446008)(38100700002)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?clJmRDNubWY0UUx5S29Ya2k3TXZRaE5NSStQVERKVGkvUXBmaGxvaTd4SnI4?=
 =?utf-8?B?ajZQM2M1VjIrQ3VwRGpRZUkvNWdBaUlsWW1rSEJ3MlhKR1A4clFNSk1ESjZY?=
 =?utf-8?B?WHhzc1pGTFBXQ0dXV3ZVeUdNTmdiUEVNMUdabHpXbEpKT1YzRnFGUCtGSXA5?=
 =?utf-8?B?dHdpbGF3Vld4czF5TjJFa2NiMzhLNnBXM1JrUUpLRkM1bkFzazQ4bEh6NzZW?=
 =?utf-8?B?eUhqZzIvSlRNQm4zWDdZMFB6SVh1RDZReFdseWY4cHczOHVHaWNza05YTVA0?=
 =?utf-8?B?UEc4c3o5TmV0YlRHZXRUdkZZbUVXdCt4cm02T2JneWZYMXMyR0hkZ3oyUklw?=
 =?utf-8?B?bThWaklFMVpuMGllcTY4U0tUajIwaXFkLzFFTEVVMGgvZlF2TSsxUUJVUDNn?=
 =?utf-8?B?emdMSnhjR3pvOXRXaXVyNEZQbkhPM3dyZ21lY0ZrWHJYdWlhRE91dVA3anhk?=
 =?utf-8?B?N0dDcWdHV1lnSzAzTFlUT0kwNEoxMy9PM0F4WDQwS0ZZSjNURCtuWkhiTHhk?=
 =?utf-8?B?ek00VVE3OHdKT1k3RFZGSHIzcm5Ea0dDa3NoRHpRdXlkM2Y1Z01HUlpJdWox?=
 =?utf-8?B?YU5oS3pwUFgyNjBQU2JQYVZXVWFkSDhtSzlLYlpRdzYzTlVkcitXWEw2M0Zv?=
 =?utf-8?B?b1FjWmtjWXV0bmVDSDZUa3FsWVh6NTV4YmtUZmlDbUp6aFNRSk5wVVpPL21h?=
 =?utf-8?B?UkZNTzdPbGVJem9Wd0h3enJ3ejlrU3Njbm1oQ2pkTEx0UWx6czU1d0JZSmw1?=
 =?utf-8?B?MWJzTGprZ1MvODJ3RXlzaS9KdmduRlFqMHVUK0J2UlBBRU16SW5XSVhBbUs2?=
 =?utf-8?B?V1hPTDdFNDUyL0JxMkdwMHNhMWtZUTFHYTkzMW1leFQxUEpUODVBaHFKcVdn?=
 =?utf-8?B?cndJTHplMFBJWkVkL2ZzN1ZqOVpEYm9SSXZJdWlLRkpUUHd1RXIzVXo5cyt1?=
 =?utf-8?B?dS9VbW1IV21raWhpR2wyTmF6TmpoQ1VFZVRpQWZVam16ZlpDREtlTmtka3Yz?=
 =?utf-8?B?SEo0NlI0elJmcGZEWUNtZCsybXpHMzdUQitTcHp1N1MvNFBCZ0ZNZEJuQUdG?=
 =?utf-8?B?VDdKdkQxc0hUNCtrQkY3NENETEFkenpZZU41dGZjakVOYW44akJXZVVSK2J4?=
 =?utf-8?B?SW9GR2Z6S3hsbnorMS8yaVg2dmpwUER1aWJHZkJkZjdLRDhTRTdreGhocTAx?=
 =?utf-8?B?N2xvL3hoeTdVcS9tMC9JTmk0SElWQm1ycmFQUXRtSjVhUi9saXQ4Vm84Um5R?=
 =?utf-8?B?V2lEYVR1eFA2ZmZWRW5nWnpxVGhkaGpoS3hIQS9Ya0J5aDdoL01RNFRjK29I?=
 =?utf-8?B?Q3dmWWhWSy9lTlBDRlFRb1Q2aXNjK3BpYmM4bEF6R2s1T0VmbEFxTm92YnQx?=
 =?utf-8?B?TGU0OGI2TjZ1ZFF5RlZLSlFha0IwcURqT3lHaTExb1ZlWExwbkhEbFUrb2l2?=
 =?utf-8?B?V2xGVFJBemhrODZpUURMZ1pGRVVRd2pUQmpLZ2UzUnNxOE5sdjRNTFRYbVZC?=
 =?utf-8?B?Q21DU0JQWWpVSDdRZW1DeGMwUXpsSG9zVmdVWjZZNFRiK01TQ01MN2U3c3lU?=
 =?utf-8?B?MWhTa2E0c09yNHhNSW04c25hNmU4aXhMU3Q2eE5oQzk1UFcyVHpkUHhROFFx?=
 =?utf-8?B?a0dDRzl1dTJpOHFEYUxGcDNYNVphdkRxQjUyM3U2Y0l3aEEySW1BR3ZuTlY2?=
 =?utf-8?B?Z2F4YitnYldvVEF6VXNNTnNkeTdhMmlNT2ZuWWZzMFl2Uk9tNGFZbzNVeHhG?=
 =?utf-8?B?V0RGQWx2WjhyOXNSNEdZbStCZmE2MnBETFJIOENOeGJCZHBPTUdyclpWZThy?=
 =?utf-8?B?NXV6OVR4QlBDcldFRXYwR3hkN2cyWDFYS1dkME1Vajhubml5ZmlVVjB0YytU?=
 =?utf-8?B?dWFqWStXUGdBWTNQc3NaejVZNm9FQUc3aHlZWXhIVTZGdFA0bGZQK0VzVHd2?=
 =?utf-8?B?MnBmaXhENFZ3NVkvU1lPTVljS0lZcHcvUU05cGJENzZXaW0rYXVDTHFmVXM0?=
 =?utf-8?B?aFRRTHg3YlJ2SFZTdVZqTlM0Z2lZWmdxSHdkU1NnNmM0WWx5VTN0RFhDSlRw?=
 =?utf-8?B?QUd3K1hDbFV4VUlOS2lVS2x0ZGFEQ1dMenpndGhjSGhQSEprQ0ZTVTVlZ2NI?=
 =?utf-8?B?NzVxbmJ0SjlLNHBJQ2kwdEZuVVlKcllvZ2Zvdmlkd0hMQlVLQU5qVS9OYlJV?=
 =?utf-8?B?OEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <082F85F622E5AD4DA08C7E9487E1CC1F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a0f770c-9079-4a8f-7e79-08da662394b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2022 05:33:43.0950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7YsQ3Ki6Y7O1Hs2kEQkbZ+n6k5c1XUmRVFgbw8S/0Q1+rHs9E5qFcV5uJVI7bAZEmXVAD+eQyCVz7cpmp3vJtJU6sf0Qcrd7hHU8kfbdtP0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2116
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/psr: Disable PSR before
 disable pipe
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

T24gVGh1LCAyMDIyLTA3LTE0IGF0IDA4OjA3IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBUaGUgaXNzdWUgaGVyZSB3YXMgb24gZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9t
YXNrX3dpdGhfcHNyKCkgb3ZlciB0aGUNCj4gbmV3X2NydGNfc3RhdGUgZW5jb2RlciBtYXNrLCBz
byBpZiB0aGUgQ1JUQyB3YXMgYmVpbmcgZGlzYWJsZWQgbWFzaw0KPiB3b3VsZCBiZSB6ZXJvIGFu
ZCBpdCB3b3VsZCBub3QgaGF2ZSBhbnkgY2hhbmNlIHRvIGRpc2FibGUgUFNSLg0KPiANCj4gU28g
aGVyZSBkb2luZyBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2tfd2l0aF9wc3IoKSBvdmVyIHRo
ZQ0KPiBvbGRfY3J0Y19zdGF0ZSBlbmNvZGVyIG1hc2sgYW5kIHRoZW4gdXNpbmcgdGhlIG5ld19j
cnRjX3N0YXRlIHRvDQo+IGNoZWNrIGlmIFBTUiBuZWVkcyB0byBiZSBkaXNhYmxlZC4NCj4gDQo+
IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gQ2M6IFN0
YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTQg
KysrKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gaW5kZXggZTZhODcwNjQxY2QyNS4uOThjM2M4MDE1YTVjNCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xODYzLDcgKzE4NjMsOSBA
QCB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLA0KPiAgCQkJCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiAgew0KPiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYp
Ow0KPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4gKwlj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiArCQlpbnRl
bF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gKwljb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQ0KPiAgCQlpbnRlbF9hdG9taWNf
Z2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcjsNCj4gIA0KPiBAQCAtMTg3MSw3ICsxODczLDcgQEAgdm9pZCBpbnRlbF9wc3Jf
cHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
IAkJcmV0dXJuOw0KPiAgDQo+ICAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrX3dpdGhfcHNy
KHN0YXRlLT5iYXNlLmRldiwgZW5jb2RlciwNCj4gLQkJCQkJICAgICBjcnRjX3N0YXRlLQ0KPiA+
dWFwaS5lbmNvZGVyX21hc2spIHsNCj4gKwkJCQkJICAgICBvbGRfY3J0Y19zdGF0ZS0NCj4gPnVh
cGkuZW5jb2Rlcl9tYXNrKSB7DQoNCkkgd291bGQgYWRkIGNvbW1lbnQgaGVyZSBleHBsYWluaW5n
IHdoeSB1c2luZyBlbmNvZGVyIG1hc2sgZnJvbQ0Kb2xkX2NydGNfc3RhdGUsIGJ1dCB1c2luZyBu
ZXdfY3J0Y19zdGF0ZSBpbnNpZGUgdGhlIGxvb3AuIEl0J3MgdXAgdG8NCnlvdToNCg0KUmV2aWV3
ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+ICAJ
CXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+
ICAJCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0KPiAgCQlib29sIG5l
ZWRzX3RvX2Rpc2FibGUgPSBmYWxzZTsNCj4gQEAgLTE4ODQsMTAgKzE4ODYsMTAgQEAgdm9pZCBp
bnRlbF9wc3JfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gIAkJICogLSBBbGwgcGxhbmVzIHdpbGwgZ28gaW5hY3RpdmUNCj4gIAkJICogLSBD
aGFuZ2luZyBiZXR3ZWVuIFBTUiB2ZXJzaW9ucw0KPiAgCQkgKi8NCj4gLQkJbmVlZHNfdG9fZGlz
YWJsZSB8PQ0KPiBpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQoY3J0Y19zdGF0ZSk7DQo+IC0JCW5l
ZWRzX3RvX2Rpc2FibGUgfD0gIWNydGNfc3RhdGUtPmhhc19wc3I7DQo+IC0JCW5lZWRzX3RvX2Rp
c2FibGUgfD0gIWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXM7DQo+IC0JCW5lZWRzX3RvX2Rpc2Fi
bGUgfD0gY3J0Y19zdGF0ZS0+aGFzX3BzcjIgIT0gcHNyLQ0KPiA+cHNyMl9lbmFibGVkOw0KPiAr
CQluZWVkc190b19kaXNhYmxlIHw9DQo+IGludGVsX2NydGNfbmVlZHNfbW9kZXNldChuZXdfY3J0
Y19zdGF0ZSk7DQo+ICsJCW5lZWRzX3RvX2Rpc2FibGUgfD0gIW5ld19jcnRjX3N0YXRlLT5oYXNf
cHNyOw0KPiArCQluZWVkc190b19kaXNhYmxlIHw9ICFuZXdfY3J0Y19zdGF0ZS0+YWN0aXZlX3Bs
YW5lczsNCj4gKwkJbmVlZHNfdG9fZGlzYWJsZSB8PSBuZXdfY3J0Y19zdGF0ZS0+aGFzX3BzcjIg
IT0gcHNyLQ0KPiA+cHNyMl9lbmFibGVkOw0KPiAgDQo+ICAJCWlmIChwc3ItPmVuYWJsZWQgJiYg
bmVlZHNfdG9fZGlzYWJsZSkNCj4gIAkJCWludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChpbnRlbF9k
cCk7DQoNCg==
