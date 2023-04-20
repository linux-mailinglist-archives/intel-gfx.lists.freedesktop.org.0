Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 527636E9B47
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 20:09:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E79210E137;
	Thu, 20 Apr 2023 18:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABA2410E137;
 Thu, 20 Apr 2023 18:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682014168; x=1713550168;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JScNLzQXB8HbZ9OmWuqAbIw2VXZmDEGwNLU06rQlctE=;
 b=cjI/mc1jbtnAHxOA5qDbcuYJuRL+T2kDDELkQzwbij8j4NAGzQSFr9W0
 DnX5UBUChBrfRKfNS3R2Hbf7FfNk4hEwNo+Xn/MgmSEsVCL+NZm+cOLeI
 benJ69wBLEEW53WMG+S7ADaYtSJjhVO3KUbKSoT8yFqI4FYZ/pfJ33nnY
 bwep6XW7bw15JBwtt+/1XIZdwYvM3QIYamscW+N47hgjUe3L6DqaSwvKg
 g9ba3azR7B9JfRgiuHUhVCZSWZfrRUfaMzzCEu8EqbGkZHmhUaY+mrMhZ
 Xg8fEgXuKHPi9Qd6S5DXge7EAkMFmBLl1lWqiwmEU6sl60dvVYb8QF1dI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="334676355"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="334676355"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 10:54:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="756597936"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="756597936"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 20 Apr 2023 10:54:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 10:54:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 10:54:33 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 10:54:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D70eBtCCCZ0VAep9OFzE+t8luvhkmVBbND/QYocphSs1F8/ubzH6ivqR+awIcReiHmq7RIpuhl85mqx8H71KkBNA/JjP2/RduHV42o3V9KXsaozYEjLw7/oTMVqs2D2JC8IwvnFrSKDp0r/9rjQMlxFz2HAxycnCX15u4N/NX4MvCBCR2+J9eCzE8NdhgUjgjkJanjOhpeP5jORGaqAAj41z01D6FvHpEfx0u1kK7JoWLHS4nzeRbPcwsw3sPQmJHKVJ0QYRE7RzQGKu6WO7UwTm2vkx3IUndY7e7caNcdDrmPbb0DoZshci2CtMLHMJAnd16K9iAf/krotaLVfriQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JScNLzQXB8HbZ9OmWuqAbIw2VXZmDEGwNLU06rQlctE=;
 b=oNcwHmMIbNoH5sRBxUiLKH8M4z9ue04MR1hiCrIvGejBnZg+OcWzn9m2s0Mjybs6S7kGd3YUEgP6njw/V/J3RBJQ1cA5hJaPcFcamnJflzNqW9c7fbfI76jqtqKITIa8Dv3C5Q1aia3IoiKMqDAffiShXqdviSBBxQ0hehMxVvO8t8wnYP69OQfuxaa+HUqrXaPxGYdeyeBdZ+Wacv/H8lunOO5FR8xupAnPqThsYePIxW66BO2pWdJt9xct7C8hKRaJmioCXakee2GNparNfVRE4Chpa+72gtUvUEN6RzjX9PROHM4CGjLGYfUhHqt4fD3wM4BmOTWWHpZrNF2O6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by MN2PR11MB4567.namprd11.prod.outlook.com (2603:10b6:208:26d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 17:54:28 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::e5e1:11b0:163a:c828]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::e5e1:11b0:163a:c828%8]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 17:54:28 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: Initialize dkl_phy
 spin lock from display code path
Thread-Index: AQHZchT1JgGddvJEYUGJZMIJij2gaq8yLKcAgAADMgCAAAmtAIAAA7AAgAHz/QCAACPSAIAAApWAgAAQgACAABYFgA==
Date: Thu, 20 Apr 2023 17:54:28 +0000
Message-ID: <6b3f534faec057a2c3d6a662cd2ef7038a8555f3.camel@intel.com>
References: <20230418164337.50303-1-jose.souza@intel.com>
 <uiz4v7ipqtw3mtgvccmi6vgiqojptaahydvh66aaqwq2tvy7sn@ne5s2vatg2zp>
 <tfvlalzyff5hv5wxid4q5garmiburkapqo6xv3zdrdxicwt2un@64brrcp2ckgb>
 <878reo1gvt.fsf@intel.com>
 <iyxrhj6q37af2fhgk6bnj756rhofpek3n77ynmwkpd4d5eckdg@cp5jmu37fsn3>
 <0394295946956dcd04d37d38bb4bfd08c9314386.camel@intel.com>
 <ZEFZ1vVrUjtx7RIl@intel.com>
 <e04570c0a82752db16d179d72ce5f4ed6c271c9f.camel@intel.com>
 <wgok6hcfxk6t4yoluaevyr5galuc446pbcpkp23augllbfrkwp@xulzu7xihr3g>
In-Reply-To: <wgok6hcfxk6t4yoluaevyr5galuc446pbcpkp23augllbfrkwp@xulzu7xihr3g>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8185:EE_|MN2PR11MB4567:EE_
x-ms-office365-filtering-correlation-id: 72245ed1-d5f9-4afa-94c6-08db41c84974
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SNG1rSPJDGG53Peju4kkv+lbjNW+/Jbygw6oOGMoJabGB8P73ZFzQQVF0gf7DJsP/xkqebLTfu6OQ9AM110O+r00yZ6FqgPCwhCd2ytoRc/PYgrC6d9SRBx8zbUge9bSKxDkoiTF05J3vb9HMz6Mjjtw1ALKhiySoXgc2KmYsLbIgM7A91ckLDOhoFLbXCaQB9NtX4Vh63xROxWX4q2T7uZvUeBUN0Npwoz0h57hbCv9U/V4Nr6loXd7o69rZzKU2dX+zMQvIxp0ib6St+0bVHmaP5cJn7zKK05p242TYZEwC4z/e0ZjkYwqdehnUwFXNNuCLDSzSLyKpn/+A2QaGEBfEwNa9sTdYoSw3TVSuBzvM+NUBt+X0cAdKGqjvn1z6YxLG9Kv6VE8ys6xSFQDhHsX/+QQlshlKiP42OAj7Ww7YiWrz7sKXVYHF+HMZjo/sv76vAhYkCQyJ0EnGgxLJElGJANbJcFJNdXebqi5lshc1J7h212zPWPHf5iiLGNdwDqi00AwW9Yv+PqRDrgoZM0TOBrREDa7dYuxafrX7+sLmfrU2s3o4elV8RTurd6Y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(396003)(376002)(451199021)(6636002)(54906003)(83380400001)(478600001)(2616005)(6486002)(6506007)(26005)(6512007)(966005)(71200400001)(76116006)(450100002)(91956017)(82960400001)(66556008)(66946007)(4326008)(66446008)(64756008)(66476007)(122000001)(41300700001)(316002)(37006003)(186003)(5660300002)(38070700005)(38100700002)(66899021)(8676002)(6862004)(2906002)(8936002)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZkdscnRSaG5IQkhTL0tiZTJYZ29USE1pZys4OU90MWxXN3pvYnJ2ZThMZDVV?=
 =?utf-8?B?ZFFFcTBYTnF6K1QzbjhNOERZL3UxU1B3QXhLWVVCZ2VhaHdIdWZlNVdFUEJI?=
 =?utf-8?B?MXZPSHR2TVQ5T3RLSHBvc3VBb2xqSjZuR2dpUkN6Wm84bTJjWDhMWDFYRFF1?=
 =?utf-8?B?MnJvdVNCSDlKa3YrSzJhK1ZNMWlwcG5pUE9pcVpRUHk0TG50b1h1Sm8yclcy?=
 =?utf-8?B?U21hYWlzS0x3MFFEbGtDZlVJUFNqbHV4ZTBzK2dmSkRtY1FwVHpkU2RKcm92?=
 =?utf-8?B?RE5vN2EvNXNWREpxT3RDdWFFYnZaSGpjYWQ1Q3JxZzRJUEltUDMzN0NxOGNP?=
 =?utf-8?B?Z3RHQk9UVFo3SlZ5ZVVmVDVCb2VxQzNLcGJFTUFCN2V1Z1RzeEcrOUlWUXBN?=
 =?utf-8?B?d002aVJyQXdValFTbDBqdnNZV1dKM1dQbnpxT3VuV0J0b2V1Um5TdlVhTDUy?=
 =?utf-8?B?N3FwdTJnRjVOYnVvT21VeTFhMXRMNWZ6NmtFVGFGK1B4N0E3RVJ6QlBPRWNU?=
 =?utf-8?B?ZFZjZ2d3azY2YUxSM2ZpSFR5M3lYZ0tGNFNUck5HOGZ0Mk0wUHh6VS8vbUpY?=
 =?utf-8?B?bGRES3BRU3FyaVNPblB1MFBKdS9vWGF2cTg5U3V3WThtN3p6cFFVZHdKR09P?=
 =?utf-8?B?cmVWY0pDRFEwVjdyc2UwdndYMjlpWHhRRWlOaGx3a3lDdm1Tdy9NWGpKQ0Zq?=
 =?utf-8?B?VzVpbXdtV1F0akl2ajU5WCt4c3dRVlFDbm9FZTNmNzc5SWNBaDd3ZW1McGJq?=
 =?utf-8?B?UHF1WWxqc1pJaXN5VU1Vd3Vyd2h5cHFZeFZzY014bi92THFmZ3lnQkx5cHRM?=
 =?utf-8?B?MG5qQ0w5eFU5dS96cWlrUXkxSzljYmRiaDdTNkxQZ1FvREJyREFONS9xV0F0?=
 =?utf-8?B?WmFNTkZFczA0cGhUZUorMTNJVDdVYjhJMDd2VlNJWHJqSWJvRjk2NjVOcEFi?=
 =?utf-8?B?SXBDMWhGTWxrbytLTzd5VkNCbi9ZK05SWTlEck5jUTU5Z2YrSTlvV0hSdmhp?=
 =?utf-8?B?QjNFZitBSWVtSnJXMVVyc3dBQWt1QlM3d29ORGU1bUR6ekhiNENBc1Y4Y0Fm?=
 =?utf-8?B?eWdVS0s2Q3djc0Z5NGlObk00emNjL3g5czhqZ1g2ek9ZdXpmbjZVS3RYb3Iz?=
 =?utf-8?B?bUtsZUFaWGQ0Rkk0MUkxUlloZ21sYUNjdkE3bldnVWZLaWFRRjBWakRBSkQw?=
 =?utf-8?B?eGdvZlpCOGZ4NlF5a243QWYzd3llTlBLV1pXcmhENFQ4TUN2WllpemE3TW9u?=
 =?utf-8?B?dlp3SmJTOWkzZGNuMk1BRVVnbTYvWEp4M2dLcDB0WVVuaVNWbTRabE1acFd4?=
 =?utf-8?B?NXNxRkJ3bzFlWHZ0T1l5UW8vMlhldmx3ODlYMEtjVVI1cDVzSG9QUG0wQ3l0?=
 =?utf-8?B?WWwzL3ZxeEdTbUFyY1p2UlVacmFhOGhCK1pnclBaaTg3c2QwQUxsOHdwTEl6?=
 =?utf-8?B?MHVTL0VIbkxzTnNCb0FEWTFyT3JIalEvVWZDREpickVXOXo4T09Xdm5YTEoz?=
 =?utf-8?B?a2xxWGJ5M2xlZ2ppYUNWZk40M1BFRW1QM3hSWENPV1FPNEY0NVRqckdIUEZY?=
 =?utf-8?B?NnE3ZHhvMUZFTEU0SjB0MWQydlBlcWdYaVNDWHkxQW1Ha3VKNVVFbWhtQzFX?=
 =?utf-8?B?bVVwRkdVbDBKVHBaemtLZUtUOVk0eHFuSElMMzFlVVZvZE1PV0pBVzNHWnZG?=
 =?utf-8?B?RTJSdFpONGJiRmh0ZEltcEtUdG5iS2pZUkRKbWtjVEpILzVPSFFWczF3amxn?=
 =?utf-8?B?bkRsc2x1by9iaWFoc2hyM1pFby80ekhRL3ZCTG81ZFkwWEZCai9JUlNGNmtv?=
 =?utf-8?B?VzlYbU1ZaXRmeHpVTUZhZmlFbjBZc1VOME1GdmlyY3F0ZHhLaHBCcWRCZEpL?=
 =?utf-8?B?RWVtRW5oUHRSdkxKSnRzbDlJWGFDM0xUb1FYMmdGWlF2QTdjczIrUE5wYzMz?=
 =?utf-8?B?Mlo3NFBDcXA1Ulk1SlFYNHZqS3pHQ3UrdnIwUGhONFVUREQrdjZqN2ZORFgz?=
 =?utf-8?B?em90Q1drQmNST201aVVXd2VBRllkdTh0MENqTmNsamNwaktlaFQxaXFSU0px?=
 =?utf-8?B?d2d3d0lUUVdhL3VES3h6aWtGQ0FHNDRibHYvYTU3dDZwUHJNZmFVQnd0cyt2?=
 =?utf-8?Q?R3iX+EPkT6NWl5ObN5OuNZV2u?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7B4A31C7921FE44A9D785534377C3A41@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72245ed1-d5f9-4afa-94c6-08db41c84974
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 17:54:28.4461 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DcB2b0h919QfJSUAnv4WrPacu1WLBFW/h0doqpgYJwlVpErricrvb4NLGR+lVRAxy/+9s4JBpXGbEVOVvk5Ysg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4567
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: Initialize dkl_phy
 spin lock from display code path
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA0LTIwIGF0IDA5OjM1IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFRodSwgQXByIDIwLCAyMDIzIGF0IDA4OjM2OjM3QU0gLTA3MDAsIEpvc2UgU291emEg
d3JvdGU6DQo+ID4gT24gVGh1LCAyMDIzLTA0LTIwIGF0IDExOjI3IC0wNDAwLCBSb2RyaWdvIFZp
dmkgd3JvdGU6DQo+ID4gPiBPbiBUaHUsIEFwciAyMCwgMjAyMyBhdCAwOToxOTowOUFNIC0wNDAw
LCBTb3V6YSwgSm9zZSB3cm90ZToNCj4gPiA+ID4gT24gV2VkLCAyMDIzLTA0LTE5IGF0IDAwOjI5
IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6DQo+ID4gPiA+ID4gT24gV2VkLCBBcHIgMTks
IDIwMjMgYXQgMTA6MTY6MjJBTSArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+ID4gPiA+ID4g
PiBPbiBUdWUsIDE4IEFwciAyMDIzLCBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4gd3JvdGU6DQo+ID4gPiA+ID4gPiA+IE9uIFR1ZSwgQXByIDE4LCAyMDIzIGF0IDEx
OjMwOjE4UE0gLTA3MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToNCj4gPiA+ID4gPiA+ID4gPiBP
biBUdWUsIEFwciAxOCwgMjAyMyBhdCAwOTo0MzozN0FNIC0wNzAwLCBKb3NlIFNvdXphIHdyb3Rl
Og0KPiA+ID4gPiA+ID4gPiA+ID4gU3RhcnQgdG8gbW92ZSB0aGUgaW5pdGlhbGl6YXRpb24gb2Yg
ZGlzcGxheSBsb2NrcyBmcm9tDQo+ID4gPiA+ID4gPiA+ID4gPiBpOTE1X2RyaXZlcl9lYXJseV9w
cm9iZSgpLCB0aGlzIHdheSBpdCBpcyBhbHNvIGV4ZWN1dGVkIHdoZW4gcnVubmluZw0KPiA+ID4g
PiA+ID4gPiA+ID4gWGUga21kLg0KPiA+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4g
PiBUaGlzIHdpbGwgZml4IGEgd2FybmluZyBpbiBYZSBrbWQ6DQo+ID4gPiA+ID4gPiA+ID4gPiAN
Cj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMS44OTQ4MzldIHhlIDAwMDA6MDA6MDIuMDogW2RybV0g
W0VOQ09ERVI6MjM1OkRESSBBL1BIWSBBXSBmYWlsZWQgdG8gcmV0cmlldmUgbGluayBpbmZvLCBk
aXNhYmxpbmcgZURQDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuMTM2MzM2XSB4ZSAwMDAwOjAw
OjAyLjA6IFtkcm1dICpFUlJPUiogRmFpbGVkIHRvIHdyaXRlIHNvdXJjZSBPVUkNCj4gPiA+ID4g
PiA+ID4gPiA+IFsgIDIwMi4xNzUzNDZdIElORk86IHRyeWluZyB0byByZWdpc3RlciBub24tc3Rh
dGljIGtleS4NCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi4xNzUzNDddIGlycSBldmVudCBzdGFt
cDogNzU0MDYwDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuMTc1MzU5XSBoYXJkaXJxcyBsYXN0
ICBlbmFibGVkIGF0ICg3NTQwNTkpOiBbPGZmZmZmZmZmODEyMmNmNzk+XSB0aWNrX25vaHpfaWRs
ZV9lbnRlcisweDU5LzB4ODANCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi4xODAyOTRdIFRoZSBj
b2RlIGlzIGZpbmUgYnV0IG5lZWRzIGxvY2tkZXAgYW5ub3RhdGlvbiwgb3IgbWF5YmUNCj4gPiA+
ID4gPiA+ID4gPiA+IFsgIDIwMi4xODM3NzRdIGhhcmRpcnFzIGxhc3QgZGlzYWJsZWQgYXQgKDc1
NDA2MCk6IFs8ZmZmZmZmZmY4MTFhNTUzOT5dIGRvX2lkbGUrMHg5OS8weDIzMA0KPiA+ID4gPiA+
ID4gPiA+ID4gWyAgMjAyLjE5MjczNF0geW91IGRpZG4ndCBpbml0aWFsaXplIHRoaXMgb2JqZWN0
IGJlZm9yZSB1c2U/DQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuMTk4OTUxXSBzb2Z0aXJxcyBs
YXN0ICBlbmFibGVkIGF0ICg3NTM5NDgpOiBbPGZmZmZmZmZmODExNGFiYWU+XSBpcnFfZXhpdF9y
Y3UrMHhiZS8weDEzMA0KPiA+ID4gPiA+ID4gPiA+ID4gWyAgMjAyLjIwNjg4Ml0gdHVybmluZyBv
ZmYgdGhlIGxvY2tpbmcgY29ycmVjdG5lc3MgdmFsaWRhdG9yLg0KPiA+ID4gPiA+ID4gPiA+ID4g
WyAgMjAyLjIxMjIzNl0gc29mdGlycXMgbGFzdCBkaXNhYmxlZCBhdCAoNzUzOTQzKTogWzxmZmZm
ZmZmZjgxMTRhYmFlPl0gaXJxX2V4aXRfcmN1KzB4YmUvMHgxMzANCj4gPiA+ID4gPiA+ID4gPiA+
IFsgIDIwMi4yMjA1OTJdIENQVTogMiBQSUQ6IDE0MTUgQ29tbTogbW9kcHJvYmUgVGFpbnRlZDog
RyAgICAgICAgVyAgICAgICAgICA2LjMuMC1yYzQremVoLXhlKyAjOTA5DQo+ID4gPiA+ID4gPiA+
ID4gPiBbICAyMDIuMjQzMDAyXSBIYXJkd2FyZSBuYW1lOiBJbnRlbCBDb3Jwb3JhdGlvbiBSYXB0
b3IgTGFrZSBDbGllbnQgUGxhdGZvcm0vUmFwdG9yTGFrZS1QIExQNSBSVlAsIEJJT1MgUlBMUEZX
STEuUjAwLjMzNjEuQTE0LjIyMTExNTE1NDggMTEvMTUvMjAyMg0KPiA+ID4gPiA+ID4gPiA+ID4g
WyAgMjAyLjI1NTczN10gQ2FsbCBUcmFjZToNCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi4yNTgx
NzldICA8VEFTSz4NCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi4yNjAyNzVdICBkdW1wX3N0YWNr
X2x2bCsweDU4LzB4YzANCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi4yNjM5MjJdICByZWdpc3Rl
cl9sb2NrX2NsYXNzKzB4NzU2LzB4N2QwDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuMjY4MTY1
XSAgPyBmaW5kX2hlbGRfbG9jaysweDJiLzB4ODANCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi4y
NzE5NzVdICBfX2xvY2tfYWNxdWlyZSsweDcyLzB4MjhiMA0KPiA+ID4gPiA+ID4gPiA+ID4gWyAg
MjAyLjI3NTc4Nl0gID8gZGVidWdfb2JqZWN0X2ZyZWUrMHhiNC8weDE2MA0KPiA+ID4gPiA+ID4g
PiA+ID4gWyAgMjAyLjI3OTk0Nl0gIGxvY2tfYWNxdWlyZSsweGQxLzB4MmQwDQo+ID4gPiA+ID4g
PiA+ID4gPiBbICAyMDIuMjgzNTAzXSAgPyBpbnRlbF9ka2xfcGh5X3JlYWQrMHgxOC8weDYwIFt4
ZV0NCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi4yODgxODFdICBfcmF3X3NwaW5fbG9jaysweDJh
LzB4NDANCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi4yOTE4MjVdICA/IGludGVsX2RrbF9waHlf
cmVhZCsweDE4LzB4NjAgW3hlXQ0KPiA+ID4gPiA+ID4gPiA+ID4gWyAgMjAyLjI5NjQ3NV0gIGlu
dGVsX2RrbF9waHlfcmVhZCsweDE4LzB4NjAgW3hlXQ0KPiA+ID4gPiA+ID4gPiA+ID4gWyAgMjAy
LjMwMDk0OV0gIGljbF9hdXhfcG93ZXJfd2VsbF9lbmFibGUrMHgyYmQvMHg0MDAgW3hlXQ0KPiA+
ID4gPiA+ID4gPiA+ID4gWyAgMjAyLjMwNjIwMl0gID8gaW50ZWxfZGlzcGxheV9wb3dlcl9ncmFi
X2FzeW5jX3B1dF9yZWYrMHg3NS8weDEyMCBbeGVdDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIu
MzEyNjQ5XSAgaW50ZWxfcG93ZXJfd2VsbF9lbmFibGUrMHgxYy8weDcwIFt4ZV0NCj4gPiA+ID4g
PiA+ID4gPiA+IFsgIDIwMi4zMTc1NDNdICBfX2ludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0X2RvbWFp
bi5wYXJ0LjArMHg0ZC8weDcwIFt4ZV0NCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi4zMjM4MTJd
ICBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldCsweDQzLzB4NzAgW3hlXQ0KPiA+ID4gPiA+ID4gPiA+
ID4gWyAgMjAyLjMyODcwOF0gIGludGVsX3RjX3BvcnRfaW5pdCsweDE5OS8weDJhMCBbeGVdDQo+
ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuMzMzMzYzXSAgaW50ZWxfZGRpX2luaXQrMHg2YWQvMHhi
MDAgW3hlXQ0KPiA+ID4gPiA+ID4gPiA+ID4gWyAgMjAyLjMzNzY3OF0gIGludGVsX21vZGVzZXRf
aW5pdF9ub2dlbSsweDUzNi8weDZkMCBbeGVdDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuMzQy
ODM4XSAgeGVfZGlzcGxheV9pbml0X25vYWNjZWwrMHgxOS8weDQwIFt4ZV0NCj4gPiA+ID4gPiA+
ID4gPiA+IFsgIDIwMi4zNDc3NDNdICB4ZV9kZXZpY2VfcHJvYmUrMHgxZjUvMHgyYTAgW3hlXQ0K
PiA+ID4gPiA+ID4gPiA+ID4gWyAgMjAyLjM1MjEyN10gIHhlX3BjaV9wcm9iZSsweDI4Yy8weDQ4
MCBbeGVdDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuMzU2MjYwXSAgcGNpX2RldmljZV9wcm9i
ZSsweDlkLzB4MTUwDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuMzYwMTY0XSAgcmVhbGx5X3By
b2JlKzB4MTlhLzB4NDAwDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuMzYzODA5XSAgPyBfX3Bm
eF9fX2RyaXZlcl9hdHRhY2grMHgxMC8weDEwDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuMzY4
MjI2XSAgX19kcml2ZXJfcHJvYmVfZGV2aWNlKzB4NzMvMHgxNzANCj4gPiA+ID4gPiA+ID4gPiA+
IFsgIDIwMi4zNzI1NThdICBkcml2ZXJfcHJvYmVfZGV2aWNlKzB4MWEvMHg5MA0KPiA+ID4gPiA+
ID4gPiA+ID4gWyAgMjAyLjM3NjYzMl0gIF9fZHJpdmVyX2F0dGFjaCsweGNkLzB4MWMwDQo+ID4g
PiA+ID4gPiA+ID4gPiBbICAyMDIuMzgwNDQyXSAgYnVzX2Zvcl9lYWNoX2RldisweDcyLzB4YzAN
Cj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi4zODQyNTNdICBidXNfYWRkX2RyaXZlcisweDExMC8w
eDIxMA0KPiA+ID4gPiA+ID4gPiA+ID4gWyAgMjAyLjM4ODA2M10gIGRyaXZlcl9yZWdpc3Rlcisw
eDUwLzB4MTAwDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuMzkxODczXSAgPyBfX3BmeF9pbml0
X21vZHVsZSsweDEwLzB4MTAgW3hlXQ0KPiA+ID4gPiA+ID4gPiA+ID4gWyAgMjAyLjM5NjQzMV0g
IGRvX29uZV9pbml0Y2FsbCsweDU1LzB4MjYwDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuNDAw
MjQ1XSAgPyByY3VfaXNfd2F0Y2hpbmcrMHhkLzB4NDANCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIw
Mi40MDQwNThdICA/IGttYWxsb2NfdHJhY2UrMHhhMC8weGIwDQo+ID4gPiA+ID4gPiA+ID4gPiBb
ICAyMDIuNDA3Nzg2XSAgZG9faW5pdF9tb2R1bGUrMHg0NS8weDFlMA0KPiA+ID4gPiA+ID4gPiA+
ID4gWyAgMjAyLjQxMTUxMl0gIF9fZG9fc3lzX2Zpbml0X21vZHVsZSsweGFjLzB4MTIwDQo+ID4g
PiA+ID4gPiA+ID4gPiBbICAyMDIuNDE1ODM4XSAgZG9fc3lzY2FsbF82NCsweDM3LzB4OTANCj4g
PiA+ID4gPiA+ID4gPiA+IFsgIDIwMi40MTkzOTddICBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3
ZnJhbWUrMHg3Mi8weGRjDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuNDI0NDA5XSBSSVA6IDAw
MzM6MHg3ZmQxMTI5MWVhM2QNCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi40Mjc5NjddIENvZGU6
IDViIDQxIDVjIGMzIDY2IDBmIDFmIDg0IDAwIDAwIDAwIDAwIDAwIGYzIDBmIDFlIGZhIDQ4IDg5
IGY4IDQ4IDg5IGY3IDQ4IDg5IGQ2IDQ4IDg5IGNhIDRkIDg5IGMyIDRkIDg5IGM4IDRjIDhiIDRj
IDI0IDA4IDBmIDA1IDw0OD4gM2QgMDEgZjAgZmYgZmYgNzMgMDEgYzMgNDggOGIgMGQgYzMgYTMg
MGYgMDAgZjcgZDggNjQgODkgMDEgNDgNCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi40NDY1MzBd
IFJTUDogMDAyYjowMDAwN2ZmZmZkZTExMzY4IEVGTEFHUzogMDAwMDAyNDYgT1JJR19SQVg6IDAw
MDAwMDAwMDAwMDAxMzkNCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi40NTQwMzFdIFJBWDogZmZm
ZmZmZmZmZmZmZmZkYSBSQlg6IDAwMDA1NjE2YTYxN2YyMTAgUkNYOiAwMDAwN2ZkMTEyOTFlYTNk
DQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuNDYxMTA2XSBSRFg6IDAwMDAwMDAwMDAwMDAwMDAg
UlNJOiAwMDAwNTYxNmE2MTdmZTYwIFJESTogMDAwMDAwMDAwMDAwMDAwZQ0KPiA+ID4gPiA+ID4g
PiA+ID4gWyAgMjAyLjQ2ODE4Ml0gUkJQOiAwMDAwMDAwMDAwMDQwMDAwIFIwODogMDAwMDAwMDAw
MDAwMDAwMCBSMDk6IDAwMDAwMDAwMDAwMDAwMDINCj4gPiA+ID4gPiA+ID4gPiA+IFsgIDIwMi40
NzUyNTBdIFIxMDogMDAwMDAwMDAwMDAwMDAwZSBSMTE6IDAwMDAwMDAwMDAwMDAyNDYgUjEyOiAw
MDAwNTYxNmE2MTdmZTYwDQo+ID4gPiA+ID4gPiA+ID4gPiBbICAyMDIuNDgyMzE5XSBSMTM6IDAw
MDA1NjE2YTYxN2YzNDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAwIFIxNTogMDAwMDU2MTZhNjE4MDY1
MA0KPiA+ID4gPiA+ID4gPiA+ID4gWyAgMjAyLjQ4OTM5Nl0gIDwvVEFTSz4NCj4gPiA+ID4gPiA+
ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+ID4gdjI6DQo+ID4gPiA+ID4gPiA+ID4gPiAtIGFkZGVk
IGludGVsX2Rpc3BsYXlfbG9ja3NfaW5pdCgpDQo+ID4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4g
PiA+ID4gPiA+IHYzOg0KPiA+ID4gPiA+ID4gPiA+ID4gLSByZWJhc2VkDQo+ID4gPiA+ID4gPiA+
ID4gPiANCj4gPiA+ID4gPiA+ID4gPiA+IHY0Og0KPiA+ID4gPiA+ID4gPiA+ID4gLSBkcm9wIGlu
dGVsX2Rpc3BsYXlfbG9ja3NfaW5pdCgpDQo+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+
ID4gd2h5Pw0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gYWguLi4gb2ssIG5vdyB3ZSBo
YXZlIGludGVsX2Rpc3BsYXlfZHJpdmVyX2Vhcmx5X3Byb2JlKCkuIEkgdGhvdWdodCB5b3UNCj4g
PiA+ID4gPiA+ID4gd2VyZSBkcm9wcGluZyB0aGUgY2FsbCBmcm9tIGk5MTVfZHJpdmVyLmMNCj4g
PiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IFJlbWFpbmluZyBxdWVzdGlvbiBmb3IgZGlzcGxh
eTogZG8gd2Ugd2FudCB0byBzcHJlYWQgdGhlIGxvY2sNCj4gPiA+ID4gPiA+ID4gaW5pdGlhbGl6
YXRpb24gdG8gZWFjaCBjb21waWxhdGlvbiB1bml0PyAgT3Igc2hvdWxkIHdlIGp1c3Qga2VlcCBh
DQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiAJc3RhdGljIGxvY2tzX2luaXQoKSB7IDxh
bGwgdGhlIGxvY2tzIGhlcmU+IH0NCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IHRoZSBs
b2NrIGluaXQgc2VlbXMgYSB2ZXJ5IGNoZWFwIGluaXQgdGhhdCBtYXliZSBkb2Vzbid0IGRlc2Vy
dmUgdG8gYmUNCj4gPiA+ID4gPiA+ID4gc3ByZWFkLiBUaGVuIHRoaXMgcGF0Y2ggY291bGQganVz
dCBtb3ZlIGFsbCB0aGUgbXV0ZXhlcyBpbml0aWFsaXphdGlvbg0KPiA+ID4gPiA+ID4gPiB0aGF0
IHdlcmUgbGVmdCBiZWhpbmQuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEkgc3RpbGwgdGhp
bmsgaWYgb25seSBvbmUgZmlsZSB1c2VzIHNvbWV0aGluZywgdGhlbiB0aGF0IGZpbGUgc2hvdWxk
DQo+ID4gPiA+ID4gPiBpbmNsdWRlIHRoZSBpbml0IGZvciBpdCB0b28sIGFuZCBub2JvZHkgZWxz
ZSBzaG91bGQgdG91Y2ggaXQuIEluY2x1ZGluZw0KPiA+ID4gPiA+ID4gbG9ja3MuIElkZWFsbHks
IHRoZXkgd291bGQgYmUgc3Rvd2VkIGF3YXkgaW4gYWxsb2NhdGVkIG9wYXF1ZSBzdHJ1Y3RzDQo+
ID4gPiA+ID4gPiB0aGF0IGNhbid0IGV2ZW4gYmUgYWNjZXNzZWQgKG9yIGluaXRpYWxpemVkKSBi
eSBhbnlvbmUgZWxzZS4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBzby4uLiB0aGlzIHZlcnNpb24g
b2YgdGhlIHBhdGNoPyAgV2Ugd2lsbCBuZWVkIHRvIHNwcmVhZCB0aGUgbXV0ZXhlcw0KPiA+ID4g
PiA+IGFyb3VuZCB0aGVuLg0KPiA+ID4gPiANCj4gPiA+ID4gRG8gd2UgaGF2ZSBhbiBhZ3JlZW1l
bnQgaGVyZT8NCj4gPiA+ID4gSSdtIGFsc28gaW4gZmF2b3Igb2YgaW5pdCBhbGwgdmFyaWFibGVz
IGluIHRoZSBvbmx5IGZpbGUgdGhhdCB0b3VjaGVzIGl0Lg0KPiA+ID4gPiANCj4gPiA+ID4gVGhl
IG90aGVyIG11dGV4ZXMgY2FuIGJlIG1vdmVkIGdyYWR1YWxseS4NCj4gPiA+IA0KPiA+ID4gSSB0
aGluayB3ZSBhbGwgYWdyZWUgaGVyZS4gQWxzbyBJIGJlbGlldmUgaXQgY2FuIHN0YXJ0IHdpdGgg
dGhpcyBhbmQNCj4gPiA+IGxhdGVyIGRvIHRoZSByZXN0IG9mIHRoZSBjbGVhbiB1cC4NCj4gPiA+
IA0KPiA+ID4gUHJvYmFibHkgY2hhbmdlIHRoZSBjb21taXQgbWVzc2FnZSB0byByZW1vdmUgdGhl
IFhlLCB3aGljaCBpcyBzdGlsbCBvdXQNCj4gPiA+IG9mIHRoZSB0cmVlPw0KPiA+IA0KPiA+IElm
IHRoZXJlIGlzIG5vIG90aGVyIGNoYW5nZXMsIEkgY2FuIGRvIHRoYXQgd2hlbiBhcHBseWluZy4N
Cj4gDQo+IAktIG5vIG1lbnRpb24gb2YgeGUgaW4gdGhlIGNvbW1pdCBtZXNzYWdlDQo+IAktIHBs
ZWFzZSBtb3ZlIHRoZSBpbml0KCkgaW4gaW50ZWxfZGtsX3BoeS5oICBhcyB0aGUgZmlyc3QgZnVu
Y3Rpb24uDQo+IAktIHNlbmQgaXQgYWdhaW4sIG5vIGNoYW5nZSB3aGlsZSBhcHBseWluZw0KPiAN
Cj4gV2l0aCB0aGF0LA0KPiANCj4gCVJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4NCg0KVGhhbmsgeW91Lg0KRG9uZTogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzUzMzEyOC8/c2VyaWVzPTExNjMyNSZyZXY9NA0KDQpX
YWl0aW5nIENJIHRvIG1lcmdlIGl0Lg0KDQo+IA0KPiBMdWNhcyBEZSBNYXJjaGkNCj4gDQo+ID4g
DQo+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gTHVjYXMgRGUgTWFyY2hp
DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEJSLA0KPiA+ID4gPiA+ID4g
SmFuaS4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiAtLQ0KPiA+ID4g
PiA+ID4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcg0KPiA+
ID4gPiANCj4gPiANCg0K
