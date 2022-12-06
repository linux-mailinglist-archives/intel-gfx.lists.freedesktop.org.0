Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01138644E03
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 22:35:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2367410E076;
	Tue,  6 Dec 2022 21:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0995210E076
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 21:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670362538; x=1701898538;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Gx9+FuLusLGezfzauKtTmADODYuxUtYoAFDS0IA/8+w=;
 b=Azhz8g6/Qts7lvDs3q0RwvUPPmf4NV5fQ+yvpc2VmDn4Sc3VynJkUmlI
 k6Dl7kZkbuyUK3LuWrRPd7aExrmFj2I1Oarq8ah5iC9k+SxRnY+yK2vlA
 ggLSPEHDC0yleKVfA+I101iB7ls7GmBBP4m5WjWj0a/61xPDicDc4TXK3
 dN34RaDNxHYFcDG/rnqMW0SE9uhN+sddkPlrgFeu7yTJ8eYdyeXYIb+mL
 yAJ9nIcTKT0ZG0m/ORkpoOBx9ztjfQV67sHHYxZtNoyVFtdYZsx4UbeiX
 ReuGA5NPMBsaQ1jg/+4nLENM2Kh9SADIVp9aOu39u8cdBVk2MLZZDk6wu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="317878712"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="317878712"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 13:35:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="648482535"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="648482535"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 06 Dec 2022 13:35:36 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 13:35:36 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 13:35:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 13:35:36 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 13:35:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E//BROLIezz/I8/JxWZ/5feNapBgc+LV39NyjlQTxKk/bk+cFvmDBHdkYE19P+r+S5JgTHQE2BMtA85q56Dr+W422N9ZroifYnmsIjgere08+l4jxMMgq7k7kUW3UiQA+q56KDFSGutdiTJzgQOBU1KPcbmx7ioS9J3ubsz4zbMa/wRe/xZRDIT9wG8D9a4amSfFhpVnm9SGlmA81RWO4idracJ21p8Ul0aTkdAnwiWrNrMYaEM3g3FqpucenYSmyTQuptDLlerJXM9Dnpm9gws3zt1alkvgIDdgSI9CPH18HT8BdPm5SfBsEydFzL1WUFNzL06ByDjdVkiDsEtilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gx9+FuLusLGezfzauKtTmADODYuxUtYoAFDS0IA/8+w=;
 b=RdvJpXKkbJQBWSd7OL54DiV8uMw69r3WosH9OPOPaaLDfGC9t11UREQDvLiEijzbsfxP/Y1fz9ZnFPrS6MHkk5u1n8PtI6oEvBzpcgRSTd5cihDXeCSC125AjPXkNd/Jo0t9CA67uj/WtBBZAtn5WF9OSMf0yz9HLCQC2o+ounpnw1nxxQv6mIq0HRQAIMJM9ATC/XG5jRZBTqJyNFZJ0m/DVF8hCANqEtKAIRkQoVriNCWUPlipJYgY9KBY2PyXy0G1WWO3NzSbNd1GeIvx4EfHixMdTV8Rp8BOZjog0Mt9JAtIOd/wZxABXaFtcNtW+g4N5xZwGTo9hm5TfE51Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM6PR11MB4611.namprd11.prod.outlook.com (2603:10b6:5:2a5::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Tue, 6 Dec 2022 21:35:29 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 21:35:29 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 2/5] drm/i915/guc: Add unaligned wc memcpy
 for copying GuC Log
Thread-Index: AQHZCVO9DZInYrxis0OeofdpS6HJDa5gpGIAgAC/EgA=
Date: Tue, 6 Dec 2022 21:35:29 +0000
Message-ID: <53fb72c915990cb4c5bf0fe8ebd976203f5556ea.camel@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
 <20221206092100.274195-3-alan.previn.teres.alexis@intel.com>
 <1f453b64-3444-9d0e-bf9b-668229e763ef@linux.intel.com>
In-Reply-To: <1f453b64-3444-9d0e-bf9b-668229e763ef@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DM6PR11MB4611:EE_
x-ms-office365-filtering-correlation-id: 6d15068a-dd44-439c-3393-08dad7d1cbce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /VLTPhIfjhbzzK1omBeLpV6+wNiEkrkZSPnkcmQjAFIEwCxrANgP7PVlyi/XVrOIUzzbBanE6OoAF3VhWZnRE3is69TH8x1SeNyTmwNbQXgJ5RDB9SBgqPEkUw6RizeXXo49bNgtJTov/+F2er8dotzrTl1tlAFcdV8MWwPG/c8fCnnkqx8tRKoADdKdQ5KXZt+iTdfwbleKWWx3aQc2JRyt/FgJ4fffCaB/VMqZP+FHjmF2Qm6sQfG3Ijc4zjE4e2fLsS0+sKuJ9iBx+sr1wpWB//Aw6vFWMyzGoj9wHWQLnUhftqQ1FSRBM5dkMl2dkVUtyLURX2oJ8INOEvjIqESJF3nALedrneTtoDyk5uO7P+DkX9dQPPYwLZzH1xnRdIutUfBuVSryxcmJMUrZpe3h/h7cs8+TSPGQLgbvf6LXHBGnjC21z7uJzt+kb4lOHLTmJjNON8QUdO9+6x2JG1TFT67dsL7627n35AASShapQ6i4leXR4d92VGLorm7NuEKkKbkSJEWKeUNYY31zCr+OkzkioNB6JVFpwJIDmKKmmXYp30smoXnnA3OZps85YpY0v6uEETSTMnhU4agxajFNiVfk8lkZkA5f1lNd9DaDbBir27J0VIeIpsiJjpp4EQeZ8xHVLkg13GsLz7xpZ7otG0RFqqFYdrD8X3i8sNf2k59roLURB+9HZXfKnENS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(136003)(39860400002)(346002)(451199015)(53546011)(38100700002)(91956017)(8936002)(122000001)(110136005)(36756003)(82960400001)(66946007)(8676002)(66446008)(76116006)(66556008)(64756008)(66476007)(2616005)(5660300002)(6506007)(478600001)(4744005)(38070700005)(2906002)(6486002)(316002)(86362001)(83380400001)(6512007)(41300700001)(26005)(186003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TTFEVFBCVytobGM2cXMzRldRbEl6U1M0OEhyZHJwN1BpN2syYWFmZVRWWmVQ?=
 =?utf-8?B?alRtd1hLTnRUMWdqMXk3eVQxcm1HQ2EwbDU3eVo0UTJodDl3WVJPNnovbkIr?=
 =?utf-8?B?Z2dLaDArdE0zT29vWCtvdEJLOVB1amsrMW9nT1p5RHdscjVETzJObDBmRUxo?=
 =?utf-8?B?aloyVnJtVG5WckNWMnBueUFOUHRlN2RueFZPczBXc1lnamRoVHR2Ry9veUJJ?=
 =?utf-8?B?dEQ2YkRwd1ViRnJlNEFCVnptUzFvOUd2Y3FaTVp5WUg3NEdPUWVwNGxZWVBi?=
 =?utf-8?B?aEhQQlBpOURJU0lRUHpCV0VtR1p2YTVONmI0WTdHS2Y1YnRnOWFTRklNMnEr?=
 =?utf-8?B?a2crSkRkUVZyTGRUQnRnY0hLZzY2RlFSQVpPVU9lYzBXZlVYbEo0RE44T0tq?=
 =?utf-8?B?VjNHZnVXY1ltRS9iU3BwTUFCUnpYams4RE4weFovcXgvenV2OURSMnhTQ01Y?=
 =?utf-8?B?TDIzZGNXK2J5Z00xU1JIc2xNZi81M3pvUmJvYWN6M3pxS1RNRGNxaTdMSVVu?=
 =?utf-8?B?ZTlzZG9Zc2k3M20wWWxEUVFYNHZmckVpcm5rRGRzOFZ1ZjYvckI5bGwwTFV0?=
 =?utf-8?B?MjNLcUpvZ3dTNWVwOExjVVlnZkhsNFJNL3Y2U05CallPL04weTNrWnFlWEQy?=
 =?utf-8?B?R3RROTVHWWNQdGNaK2ZLL0FQSzVUT2Y3Zm94VTJOUzRueUxmaXFVYWhPaXFS?=
 =?utf-8?B?emEzdHlDRVRLeWZzckdwRVcxcDNlNTJ0dldVdXlQV25hNHExOTRrak92Mk85?=
 =?utf-8?B?M2crNk9oK1FJRzQ3RU01SEgzUVFzb2lvZ2EzUzlpUXpIZzl4SVlCU3Zoc3do?=
 =?utf-8?B?d1BrNDBxcTVrUkRkWHFIeXVucS9CZW0rOUNUbEZPUVpkYmxpbXZlU3lEdnlJ?=
 =?utf-8?B?T2c0cENKTmYzaFc5Vkg2c3JzS2lSaDFRK1l3UzBRU2lvNDdOWTZJYmlaUURk?=
 =?utf-8?B?N3FCM2NFREU1YThPN3lHc0RpU0UrVTI1aTRmdmdSc0hkVXorMTFMcmZJQ2xM?=
 =?utf-8?B?em8vNHVDOGMxN1dJQ0t0UXlaNWZlU1RwRmYwZzNCVmZ3L3MzVkNPQXN6bFJD?=
 =?utf-8?B?amo1NmQxdWU1TGsxRzNRakdpaHAzcFZ2dkV6WENkaUdzVlM0Qml3ZWUrKzJN?=
 =?utf-8?B?K0Z3WlF6TWt0NUthbVJaZGlrbDRCOUZldGRybUxzNlhVTUIxUGJnKzU1cEwy?=
 =?utf-8?B?UktzU0tPS1Y1Wjc4NU5qdnozSzlCSnpnRDc0bXQvbkQ2OHRKQTNlZU1SbXhj?=
 =?utf-8?B?L29laUc5bEhKTlNOM1dVc0pRRGlDbFkvcm4wRjkzREYwNGJRZEVIYkt3b3ho?=
 =?utf-8?B?RmhNK3JuczhCM1NiTUpOc3NmeGNtbjRlMFdGdEFoaXp6a29zVW9RVFZXemdG?=
 =?utf-8?B?aEFCOUd1L0lxeHYrTytySDI5TmVzZGlJdlRWeUo3SHd3YU5tUWV0Zjc4emY0?=
 =?utf-8?B?ckIrZDRDU3RjQitmU2kwTG5UWWVLa3hlMVkzNTd1eTFYRGYvNlpwSmwxNG95?=
 =?utf-8?B?TjgrQTBNTU9PR1drNW41LzVTNXdaMk9rRDh4UVRrRU9Rd3d1bVZnODMrODhh?=
 =?utf-8?B?R1JLa3ozaXkxQ3FuZmdEWGRWQXJVQm5GUWs1UEJjbGhVQVdpcmhRazU3UWQ1?=
 =?utf-8?B?eDdGTTFnWUtLL0pTQk5sYUlyQlRHQ0FQY3lUeElYc0hBby9oUUV5T05LTFlK?=
 =?utf-8?B?UndKVE1keFNLMjZUQWhuZmNrdDNJc1UrTGQvcXhKODBRc2xmNmNKK1kzVXhM?=
 =?utf-8?B?RE5VeHczbm5wMlVyQXNtVkJCNzVaUUZ0c1dYdGJxdDU5bEkvcVRhUGU2Q1FY?=
 =?utf-8?B?OXJYdXFybWhWUktIRDY2dk9QN29mTmpvU2VqVWZYWVFyNVFzbjdyd1c5QlhD?=
 =?utf-8?B?azdVV0tHYXB5bHJYUFhEUUxpUDZ4OGRPOHpvTTRnTG1HOTVUVUFmWDg5WHkx?=
 =?utf-8?B?TS9sMWxiU1JEYjJ4WmR4b1B2RTlFWWNuNy9RcE5MR0VDYUJ2Tm9yVTMrUDBN?=
 =?utf-8?B?YTVsem1EckkvMCtWOERKK25FL1VzNXFmVUhITHM0RVNDQzY1a0UyNmZCbDJi?=
 =?utf-8?B?UjZMbUZIT3B2N2xMMktMempHdTdWK0o0ZFUxWkJEaVNRM29aaFNva0lUUXBz?=
 =?utf-8?B?NndpS0NhSzEwZkNJeTZEUVF3YldaQUdCVURnVXI5VW1tcVdHSklzWmpGOWIr?=
 =?utf-8?Q?9NmE0yddmvbFuyyTtZ2oqc4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <88CBAAD3F2CC48449D3F6C41219BF493@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d15068a-dd44-439c-3393-08dad7d1cbce
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2022 21:35:29.3615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dc0Dr0dRV9ekiBmnXIxiEEsxF4akLU8nsRBbXwtXPqM37Py9mseiDyMPKqu8JZFSWb+U2p9kTWgzfcp15r3kwSoA9dKEwc9Gqg+tdwIvZ1+Lmo1cJ+I6LIZnwhNgs5Gj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4611
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/guc: Add unaligned wc
 memcpy for copying GuC Log
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

d2lsbCBoYXZlIHRvIGdldCBiYWNrIG9uIHRoaXMgLSBidXQgaXQgd2lsbCBiZSB0aWVkIHRvIGEg
c3BlY2lmaWMgR3VDIHZlcnNpb24gYXMgb3Bwb3NlZCB0byBhIHBsYXRmb3JtLg0KDQpPbiBUdWUs
IDIwMjItMTItMDYgYXQgMTA6MTQgKzAwMDAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPiBPbiAw
Ni8xMi8yMDIyIDA5OjIwLCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiBBZGQgdXNhZ2Ugb2YgdW5h
bGlnbmVkIHdjIG1lbXB5IGluIHJlYWRfdXBkYXRlX2xvZ19idWZmZXINCj4gPiBhcyBuZXdlciBm
b3JtYXRzIG9mIEd1QyBkZWJ1Zy1sb2ctZXZlbnRzIGFyZSBubyBsb25nZXINCj4gPiBndWFyYW50
ZWVkIHRvIGJlIGV4YWN0bHkgNC1kd29yZHMgbG9uZyBwZXIgZXZlbnQuDQo+IA0KPiBJZiB0aGlz
ICJuZXdlciBmb3JtYXQiIGFwcGxpZXMgdG8gREcyIGFuZCBHdUMgbG9nIGhhcyBiZWVuICJwcm9k
dWN0aXplZCIgDQo+IHRoZXJlIChhcyBpbiB3ZSBleHBlY3QgdG8gdGVsbCB1c2VycyBwbGVhc2Ug
Y29sbGVjdCBhbmQgYXR0YWNoKSwgcGljayBhIA0KPiBmaXhlcyB0YWcgc28gdGhpcyBnZXRzIGlu
dG8gNi4yLg0KPiANCj4gDQoNCkFsYW46IFtzbmlwXQ0KDQo=
