Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E119753072
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 06:16:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AAA110E1AA;
	Fri, 14 Jul 2023 04:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 991BF10E1AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jul 2023 04:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689308196; x=1720844196;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9jyVaPIIFvkdOsGDpwOffFBL8RxnceAOnic6RuRnhtE=;
 b=kfqS6hkTEy6eJj0basxcB/9+Io1VIKBZFKIV7WgkMr2RjK8UCgbNTXn+
 359rANBX3uDZQP6jkxEwJCMxx8J4gnQasgZncbaHug3Qt/nnjGuNUlA7u
 G4LZ0FLQcgmC/8Zk31mQ9l82xryQSh88H1ZWhxFvke3pqQogbef3wyVG4
 4KzUcpmhhLWQ+GZ4nJ+jsLrUBbVcQkU+wKqaIrokomuMlvpGWQPJbJxwl
 wQM634WLz1a72zC+m0wNVqATA7NOJbtMBs/plPr2n4FzYk5/3bzgBMuW1
 9VC0i9afWjWM7iV/JgJS6yqCbWzBAkz8vOXnsm3ehPNPCB7RsfBWGrQIF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="368027835"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="368027835"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 21:16:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="846319367"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="846319367"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 13 Jul 2023 21:16:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 21:16:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 21:16:34 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 21:16:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i1lVPlWWddkzA+9GL4jl3GExM0ETOUDLGB8NSXuB0IZID0Aw4WO5fJr+ddzc60PVzXdHIlNz3Y9Mytytw/OzeU7UfFH3sZwLq2MriN8mVPx5Ibn8a/GYBZcHE0qdYxDcvzC0Q1twxL0vkCrAVi8IfvOCMLcCfX6OAjWKkxyv2DTlx2H74s2BJkppNX4Tjq1UShnmtm/aSXmI0zYRAedXzsdqiyzwbsbhdkR3RiUI/jefOe+KvqkJXVqMYyXFpkMUssyfFAtbvvFjWfuL/i4KghWe3CSep8ABAcKny4CJGhWFD7t7Le8UnCbfFecSFki8W8lJPP1ZAgEiLQbBCezWfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9jyVaPIIFvkdOsGDpwOffFBL8RxnceAOnic6RuRnhtE=;
 b=I5WgPEq8nwLo3Lk5tmgoKOYPXoURy+fyjv8MUIaT9uNnm4HKLMO1Wwe6b14rv5YMvhcX7K+atBP4oMz3FvcPwOnxStvY5MtP4G9hqxsipx2LTakXCsgKir/Q7kZwxpNKNyFFK4MTeNFyuLi+x2qfhccWZjGcJiBcVhYuGPm0lqF3FOa4eqkp+h9D/Z9RvJEkS292vvu5mbHAKO4qSV1ZbvDUScH8M4iTdSLSw6W1LEa6TWaLwkrezZdzSu3D5O3U1ZXEzMOLgGOrW8Fp5tekFdpCr+EZQVoeC8T5ymcQHE7xWOCkIIyepjLLv8dW5GM1DYaCoc5K2xwnBJvlW4Q60Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM4PR11MB6503.namprd11.prod.outlook.com (2603:10b6:8:8c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.24; Fri, 14 Jul 2023 04:16:33 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::1cda:590c:994a:abe0]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::1cda:590c:994a:abe0%4]) with mapi id 15.20.6588.027; Fri, 14 Jul 2023
 04:16:33 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915/panelreplay: Added
 HAS_PANEL_REPLAY() macro
Thread-Index: AQHY9RZYJDyMlL/LX0qj2kNcr6LxCK+6J0dw
Date: Fri, 14 Jul 2023 04:16:32 +0000
Message-ID: <DM6PR11MB31776947D13E9BECFCC5CB8FBA34A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20221110150307.3366-1-animesh.manna@intel.com>
 <20221110150307.3366-3-animesh.manna@intel.com>
In-Reply-To: <20221110150307.3366-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|DM4PR11MB6503:EE_
x-ms-office365-filtering-correlation-id: 35283fd7-d975-43d1-a096-08db84211b3e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qrAV8CkJ2LmzPJCSJyIrm7Fa+lBRL8d77IVcjbjjSI5yjZoDwJKqTJ/xlmbBOGTQCpvSZVJgCtsUhAC8txIjQkXkeDGKjJZmpVRHACszQIkURZ/TsGrl142RH0Uqn/j//p2IlENOff0wwNXXI2x+ndO9dK3dfTMmTpkl27qQRpNeZ3zugtEJalkox+eZWFv0d0/OWtE4xH0d7UTWjrsIAJLxu5F3ZPljeEnQrAgKU1VTvf5e0ecZ9+LW6Hn2c1SfsEyMpFqd3N9NJQ3L4yr1rJRjFmr7Qj/iptAWmrIdhlNOVIhCsojjba17gyUhOOeDrPf47OtQ9LPxoFocO217HLLLLUi/7XnW4IdT9CgQyX9do6LTfofXQv/KgWmubpo7V11hbVJf3XufeuH46gYDHxVWOckKhhKuHugOIxmPJU/u70Q9vlPVE0/sRJjlwv2TEmvo4dHZhNVPZOljeDp27fdb29Zl8O1LqEk38rwDJlS7UDCG0DwAmQJ1sG5GwUOvB96f7DacXhVjOtDIuR7NB0uRrricCHiWgzFvhHFEbG/6N+Epl5Igwoo+MWikFVXQXX1RhkHCThH2LdbkNSNheWMtpbbV1xnzPB5tTsWbTR+GS+VesRtQtsyLV+7SFLRa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(346002)(39860400002)(366004)(136003)(451199021)(8676002)(8936002)(33656002)(83380400001)(2906002)(122000001)(82960400001)(38100700002)(38070700005)(86362001)(26005)(52536014)(5660300002)(55016003)(6506007)(53546011)(186003)(316002)(71200400001)(9686003)(66946007)(66446008)(64756008)(66476007)(66556008)(7696005)(76116006)(41300700001)(478600001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S1VzOWRzZGVLRFVQV2NZYWwrZm0rTU1XZkdhT29ITytMcHlCRG1leGcyNldP?=
 =?utf-8?B?cGIzV1ZQZ1AxQi9yZjlaeDVhc09ydnpDUUxRRS9BTVpXV2tLVmJza3JTNnYy?=
 =?utf-8?B?K2JFUEYvOGNnb3YyN2VvZHp0M2RGWDNWcEpkaFd1N0VmRWVSSlorTUtPc1ZJ?=
 =?utf-8?B?RC9NbVc5eU03NWNRZTVsTlY1Yy9wQm5Kakc2U0RhV0NSd1g5b0lBS1MreThh?=
 =?utf-8?B?RzB0U2RsN3ErT29nU0U5TlJ5cld4V2IwMkVXWDcxWTZMKzRqbFFCa2dBTTdm?=
 =?utf-8?B?eWVSbnFXZ1cvZEQ1MDdQcjFscU9JQ25jNWIzV3hwZk9ZY0R1MHptWFBYL2F1?=
 =?utf-8?B?K09WajRaY3VJTFUrcUhac3RwVG9EZlcxckZxa3pta3oxSEo3M092RS9lR3Yz?=
 =?utf-8?B?UllQcUd2ZDFFQkVyV201RXhqV2ZuZXEzbHkwMXZWcVdQSXVGbGFUUnVFUnBo?=
 =?utf-8?B?YVo5d0ErRmRaYWJMeWcvS3FjYWRWSk9rSUFqZjFNTkRKZW9SVVZmd0ZIcVlR?=
 =?utf-8?B?YU1QZjlJTTdLRUVDZXYxWWxPNlNmeG0wbGQwOFZ6TGl4a3Y3SXpqWStUVWtx?=
 =?utf-8?B?Y0tJTzJMQWVFU1lLaTdxWUdPdDNZUWF3ZllVNnQwb1RiUnNkS3MzYXhlcWM4?=
 =?utf-8?B?b2g2alNlLzhiSlRvN3pKeDNJSm8rczBhaE9ubWw3eFNVMlJ1QmZvdTQxNkNN?=
 =?utf-8?B?ZWkyeXR2Z0NPb2Z1MlJHZVdlVStmL0ZnOXVQYW5pSTVORVdtNGdhT2cydnN0?=
 =?utf-8?B?SDQwOXZJb0U0aVc1SWlkU0VIK1NaS0hxVE0yUkxiUzlhSWRFdzhxa3VvU3BH?=
 =?utf-8?B?UU1rangzOEJLUy9YVFZMRW4xTXIyditNWENLODVIakFIZ1o4Y1pibG5nSFlU?=
 =?utf-8?B?VjZRZEdTaVA0aGV6K21TSE5sTndUZVpRNFh4MjRha3BsSDhjYlhIYWNNcUgz?=
 =?utf-8?B?ZDdaK3FmRWVWYkpPRmlnbXNBT0JUajIrTmZqYWE3L1NBQmd2M01iQ2RyaHVl?=
 =?utf-8?B?Q0p2UEQwbFB0d2VvdlVWNlJEaExiNFJnNUgwVjkxejFzZE5jY2Z5b1ZKL1JI?=
 =?utf-8?B?NjRtMDhSVUk4VC96Zyt5WTF0UllVREhidkluN0NQK3lkTVNyZjlsMC82d2h6?=
 =?utf-8?B?cjlhS0lTUjVtcWF4MmkxZkxhU252dEQwZHE0OEhCTUs0ZFJ5Z2JidEtBN1BJ?=
 =?utf-8?B?aVZKOEFNUzVrbkdFVERZZEVDdzAycEpPRVZRU1k2SnhxdEt2ODFPRlFrc3Y1?=
 =?utf-8?B?UFU4Zk1HYmh0NVBOVDA0QW10RzBKclZlQy9wbWpYejRaZURjTjF5K3JYWVdK?=
 =?utf-8?B?ZFJYeEV2b2VvbDNDbjdPRXczSlV5Q2RTQzAzMWxDWklWdkZPRElxcEJuY3VN?=
 =?utf-8?B?akd3SXBIODFwdUxPS1JySVNOTkZJWFVWaTNoYUorMkVPZVRNaWFQV0k5WVkz?=
 =?utf-8?B?c3lNYkpvbXN4N2JjNUN6UXo4ZzFVeG83TW1OSityUEpWMW0wN0NqL2RiSnZI?=
 =?utf-8?B?YXkyVHFUeGJtUEhnT3JsOEI2TVcraUErUjdnWlZid2dGNzhTMHplMTFJbnJu?=
 =?utf-8?B?QXFhUmNYdnhVb1pvZTJ3V1Nxbi9PUlJLS3FUY1hkaXBrSHJTWmJvRXZ0WFo5?=
 =?utf-8?B?RE5LbXg4bVlvYkZwNm9ST08zMHY2dDl1TmQ2aDVINklzN245d0hoWXd2RS9u?=
 =?utf-8?B?eHJiMlJjMDFhUVh3K01yZTF3TnJoOWJyM2ZFclU5M0JzVUN4aXdMd1lyU2Nw?=
 =?utf-8?B?Q1pISkc0b2Y2UG1tc2NjY0tjZVBnNGFTakltZnlnSUtMQlp5SzVzbGVTck5v?=
 =?utf-8?B?anl6d0pKVVRhT0lHNytNNEhvMzBxeW1xQ09yWGoxcy9DVmVHazRtTzBJaHVG?=
 =?utf-8?B?VDBQRVFYc3BDZjM1aEJ0OW85by9pOWF5VlE0OHZ4aENHdFhNUXZOZi9kVU1z?=
 =?utf-8?B?OStOd2VESFEzU2NrdFA5U2cvTVRBdDJXQzNTSEdyUUNLSVljeXdiZ255NGQw?=
 =?utf-8?B?UWhwMDF3SVZUU1ltMmxJVzNDbkdReFVPSER6UmgzcWorb0QweVdjV0V4NUdX?=
 =?utf-8?B?V1J6V0NMS01IdGZEbGVtNWJEbGNoQkFlb1loTHBkNE5IZWEzNE5nSzJGRzZr?=
 =?utf-8?Q?VNzR1lMDBQ3EhD7BEsuhsvhdJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35283fd7-d975-43d1-a096-08db84211b3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2023 04:16:32.8892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LmhvXxRwFVSEE5349yiZRanTz3lZs5mnOmjncK/deDXi83tmFq11N6hBmuuaZynnkezlvw47en334gVW/hv0cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6503
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/panelreplay: Added
 HAS_PANEL_REPLAY() macro
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IEFuaW1lc2gg
TWFubmENCj4gU2VudDogVGh1cnNkYXksIE5vdmVtYmVyIDEwLCAyMDIyIDg6MzMgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIDIvNF0gZHJtL2k5MTUvcGFuZWxyZXBsYXk6IEFkZGVkDQo+IEhBU19QQU5FTF9SRVBM
QVkoKSBtYWNybw0KPiANCj4gUGxhdGZvcm1zIGhhdmluZyBEaXNwbGF5IDEzIGFuZCBhYm92ZSB3
aWxsIHN1cHBvcnQgcGFuZWwgcmVwbGF5IGZlYXR1cmUgb2YNCj4gRFAgMi4wIG1vbml0b3IuIEFk
ZGVkIGEgSEFTX1BBTkVMX1JFUExBWSgpIG1hY3JvIHRvIGNoZWNrIGZvciBwYW5lbA0KPiByZXBs
YXkgY2FwYWJpbGl0eS4NCj4gDQoNClNob3VsZCB3ZSBhbHNvIGNoZWNrIGZvciBEUDIuMCBzdXBw
b3J0ZWQgbW9uaXRvciBwbHVnZ2VkIGluIGFsb25nIHdpdGggdGhpcyBEaXNwbGF5IDEzIGNoZWNr
Pw0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQotLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KDQo+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDEgKw0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggaW5kZXggMDViMzMwMGNjNGVkLi5iYTQ3ZjQ0MDlkMGINCj4gMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaA0KPiBAQCAtODczLDYgKzg3Myw3IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICppOTE1LA0KPiAgI2RlZmluZSBIQVNfRERJKGRl
dl9wcml2KQkJIChJTlRFTF9JTkZPKGRldl9wcml2KS0NCj4gPmRpc3BsYXkuaGFzX2RkaSkNCj4g
ICNkZWZpbmUgSEFTX0ZQR0FfREJHX1VOQ0xBSU1FRChkZXZfcHJpdikgKElOVEVMX0lORk8oZGV2
X3ByaXYpLQ0KPiA+ZGlzcGxheS5oYXNfZnBnYV9kYmcpDQo+ICAjZGVmaW5lIEhBU19QU1IoZGV2
X3ByaXYpCQkgKElOVEVMX0lORk8oZGV2X3ByaXYpLQ0KPiA+ZGlzcGxheS5oYXNfcHNyKQ0KPiAr
I2RlZmluZSBIQVNfUEFORUxfUkVQTEFZKGRldl9wcml2KQkgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA+PQ0KPiAxMykNCj4gICNkZWZpbmUgSEFTX1BTUl9IV19UUkFDS0lORyhkZXZfcHJpdikgXA0K
PiAgCShJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfcHNyX2h3X3RyYWNraW5nKQ0K
PiAgI2RlZmluZSBIQVNfUFNSMl9TRUxfRkVUQ0goZGV2X3ByaXYpCSAoRElTUExBWV9WRVIoZGV2
X3ByaXYpID49DQo+IDEyKQ0KPiAtLQ0KPiAyLjI5LjANCg0K
