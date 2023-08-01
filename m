Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2113976A839
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 07:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0275310E306;
	Tue,  1 Aug 2023 05:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96BC610E306
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 05:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690867591; x=1722403591;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Pr66jh+qoNWZSILBFA2fhOCLiW9YSDA/056+R1UjPAM=;
 b=OjUXu59U0sbOh0geckYldec5xQkRLlfpjm13MhhYqgirCxz618y6bh+c
 6Zon0SnRp3UAyzonRdyeu0oQ9Fp/lhQZar0ioEo83DUvKrLxgy8tZaWv7
 1dpvjbyPWcetQtNakX7t0zCpnwLPU+G/SRDFHh9on46CiUs48vLMd5t3m
 ngLG+0YXEd5y491okbX+tRqUItJnJpnShuWiSIIWOdrfunJLSFHxWfMiq
 BQN9L2sepqMohE4/PdLsQjDTOfipcRRd6StgHdzyylMlVaR2NaLxR08uG
 3u+2Wx0yZ9+ldg7aiqvAcKdTMaYC0MyLfaKzb9ULtswQuTgZwsIlaN8cB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="433037958"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="433037958"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 22:26:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="731819742"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="731819742"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 31 Jul 2023 22:26:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 22:26:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 22:26:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 22:26:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EHjF/h3VOAqxcc/5HocC1N87Ngqb9O0KINw+GUmNrhZ3Gt0ZPFAU19j7c8dzXVkCKM4CVXutz1KCAK7gClXTFWKLrnkDzBZ6OU1SAu/t2fkWHc6Aie36L4NjFYhVqxVGtuFve966q58JTDiv9kpwHNykHZeQBQYcyQ3lplKrpHD0EucZD8Ace3vZybBjDHYKr7ppks/DHPJ/KJkvbcaIg+8SN4ByReYEWl+ANLzQ9oHLCZU1DM7E1MwE6l5VnzoEcUZwuM6/QHqR0GhWVbygv5k1YKrkhmj/NnDV5nbE5yoWFamkEyd0UDczfvEIvpitSBmpZdo+JEAPGL/xHWI3Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pr66jh+qoNWZSILBFA2fhOCLiW9YSDA/056+R1UjPAM=;
 b=h7iYdp1ZAOlcWppzFtT/Zy9KWuSKK8H9i8lXtG0bl39EgOe1uyiiykl+WgYVjErwCkE4zzpYeKc2QGUc97GvmLnsjIr7f+NVIMDnLuW2vM4b078AKNqV3CyRrX3++2GKC6CDqUrdQvDjZvIaH5Qh0hrMXeRy+mpZPHvHUx2tQomzr5VdrH1N8A0ncVby6rhUYgZGhAsNPHN3dTMWdRXI4JmN5B9i+IOj5OzltoNNKrc76XePR0lD8wrMQe4i7oDTt6l/jMbulvBijWAN6pnSMR3Jh42tSLqP8l4ZHuW3wSAAlrQlaY2Whs+Ji9yyPpIKT6Kq5r4WvLP7Y+EJvvYE7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6312.namprd11.prod.outlook.com (2603:10b6:8:a5::11) by
 CO1PR11MB4835.namprd11.prod.outlook.com (2603:10b6:303:9e::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.44; Tue, 1 Aug 2023 05:26:28 +0000
Received: from DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::6887:918:cb54:2006]) by DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::6887:918:cb54:2006%5]) with mapi id 15.20.6631.043; Tue, 1 Aug 2023
 05:26:28 +0000
From: "B, Jeevan" <jeevan.b@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4 3/4] drm/i915/display: Remove
 i915_gem_object_types.h from intel_frontbuffer.h
Thread-Index: AQHZwFWEoiWHuAhm/USCFF4Tz/K4qq/U8HeQ
Date: Tue, 1 Aug 2023 05:26:28 +0000
Message-ID: <DM4PR11MB6312F7EFF9CEB2680E72C005900AA@DM4PR11MB6312.namprd11.prod.outlook.com>
References: <20230727064142.751976-1-jouni.hogander@intel.com>
 <20230727064142.751976-4-jouni.hogander@intel.com>
In-Reply-To: <20230727064142.751976-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6312:EE_|CO1PR11MB4835:EE_
x-ms-office365-filtering-correlation-id: e6d8592c-b8d7-4e50-74ba-08db924fdb58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H89BlxXN6zKrffs6lYX7Kio3fC6z4rikZLbk2DmqaWpqp7UmNLSDqcVYUv5UtWQ0GuLC08OD3sUHeNITJRlvdHohnXGDqnY7WtSNwqN7D5tMGT6PZXoMWRR6dwdhrcC8hZlWUqNLotubPl2tNb1yQLdGUZo6ZU9KXf3KsI3EpHJ8a/hgcsldOU1XH6miNefD17P1QBtwaSUsPoQFbqJ8hLrO6APHFXnZS+y/+xymlKi//QkmdjBsJxkylDb75tHoe9p40tp1zhZLkjyjyYTAqtdxn67s447DKLAl1r3ZKCA6h3IhO7PBj2V9lnoPiZloGxivqyidv+jbapGsieMzgdlLnp0oUqPWUlUA1xaPR8DlKFVpDFeprHlq/I1vM7QQRj/bd2/W2ecRpCf8B4FsOuenxRQHnT0GLBR0KMvSM789sTCdgeMg2bwZDA5BK5j3rMRkM+vVp2qNS66ZUJ4F94tl6eZYu0G3cDWLTJ0G89AqjjrRIghYoB+Bm9l6S1gWCgxAKRAjiGR3IkmhCvf6MnbrNx2RNOiW/L9d0OzD6Bbl8xxrxmPBNscWcU/ql/vLuzp7tMxklvm42eI7FwIUVKZqIeTwitrUFJGKxQ1KKOOHZT8+13cTf4nyM4Y/LK37
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6312.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(136003)(39860400002)(376002)(396003)(451199021)(38070700005)(8936002)(8676002)(41300700001)(7696005)(478600001)(2906002)(66574015)(83380400001)(26005)(316002)(186003)(86362001)(6506007)(5660300002)(76116006)(33656002)(38100700002)(122000001)(9686003)(52536014)(53546011)(110136005)(66556008)(66476007)(66446008)(64756008)(71200400001)(82960400001)(66946007)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2N6dkRIS3d4eHRzckRHQnd4ZzFxTFcwTVBUKzBqeGVnYWZZa0tVWHVmVUh4?=
 =?utf-8?B?dDZjNW5jekNTc2V1Y3BDTHFrdEpYYW5obENkeExEVXM0a21qODBPeGI1Qzdn?=
 =?utf-8?B?aEdrY2RISVNqbVVldlVUdHlTaURweElPTmk5SUc4a0pKSm5SRVM3cnI2dHJV?=
 =?utf-8?B?RUY3TUJvV1lvUVRTTy9DTEQ2d3BSLzB3VVVXdGJkYW8wRnFDNXRhQ2VCaitO?=
 =?utf-8?B?WVlsM2pDeitibm5HMEZGbWN1WFhFK1RoTUxCTjQwaCtXa2NBUU9aQVVpd0c1?=
 =?utf-8?B?S3VYNVV5cjVvWDYyM1BsZ0doTVkreWQ0STZvcTlSMVV6RmErTktVMXpqWXNu?=
 =?utf-8?B?T3hiMXFCdG1DUy9TbXNKRjRxV2ZVT2pPQUNhUGx6Yk1rMjNiaXdjVXZZZkI3?=
 =?utf-8?B?MUpEaXppTnRXOEhndzdiVytMNEtReDZPdm9mLzRQbWxCeFRORjNIVzF5OUlt?=
 =?utf-8?B?VlY2YVR0UGlNMWhPZmhQbTNXSnFXeW9EU080NXVqZlA1YnBtaWRadHhNdEho?=
 =?utf-8?B?WThzaG9LT3BLT3l5QjVEb083Uzk5bStPOVY4M3ovWURnbG5jSlIzbHdIZ2d5?=
 =?utf-8?B?amtZRFNIc29jMXpSdjNFbWZxR0pFTHVmYlUxWmJkTWlGZCtBTmJDTy9TNms3?=
 =?utf-8?B?bWZJcDJBSS9EMVVtVHd2ZmJVbnMyNnJETmM4L0RPaGpmUXp5VW93UUpuNjVJ?=
 =?utf-8?B?bVJvL1JlbU9KcGNqTCtzTWhVWVR5Nk1OOGQ3elpIWS9sTWhMZTlpK213cjl0?=
 =?utf-8?B?NHZ4cWZWckZXN0UyUlRab3BrQ3lLSm4yR1U1QXRvMUdIYWlDenpzWG05SW9s?=
 =?utf-8?B?M2FYeFpVRVhFb1BJMm11YVNwTFNEa3VHMUN4SFNrMzN1SFVrMGFpeXE4dFQx?=
 =?utf-8?B?WWcwdjJWYmpZVUNuZ010TVNDV2dmT2dBcXpvL3lrUm9mcjM3Y2pEYk12ZHRB?=
 =?utf-8?B?ZXR6aFlKeTNUdkpPbzJua3Z3SUFMeGNsUk1DNUIxNlE2RFVqa2t0dSszTm53?=
 =?utf-8?B?U08rU3h6U3N5ZGlTMEJXMHcycGVjMUsyMWpiV1VtV3lCaVhqNnhTS1hVR3Yz?=
 =?utf-8?B?YXBxaTJSZ2pPWDFXL1BwSU5uVWowVEl0NXJNbEkyOFdtN0R3NmxlVGpreXhM?=
 =?utf-8?B?cDRUY3hDbnJhVWVWeWM1dUEwbEp3SC9XL2ppREdMMlg5L0Fnc3RjOC9tblhR?=
 =?utf-8?B?MGs2L29ZcUhUNFpGd3dXY25JWjJpU3ZmdTJnYmNSeDFvcGgwY05PcXVkNHdk?=
 =?utf-8?B?WlFzVTlWaTNidWszTVhyNWd5UlVrbWgwcTFNcHBQOFVRNWRvQlB5YTY3RHdT?=
 =?utf-8?B?eWsrSEJFR0hIaHJkblNZeklzZGFpTzBGdlp0aUF2ZmdQdzNEaGt1YWYySjh6?=
 =?utf-8?B?cGw1S0ZaWXdCSDJrOUNITWZHRndpQ3dmTHhHbFF6Q2orbkV5MnhwWHNNSWtB?=
 =?utf-8?B?TzdVOTJYOXFVV3I2cUI0cTRjYzgzQ2xnc0V3SEh6RGtzd0ZnZjRHbFFsa3d0?=
 =?utf-8?B?eTdFTDN0UjBrZ3A1MlkrazZjZ0Vsd3Avam9NOFdYWi9qTFNoYkpINzQ0bzdF?=
 =?utf-8?B?VjhPWnJySHJVUENLVjJ1SDA2cGlzM24za1pjbytkYlB6ZlB5VzU0enA0SFZI?=
 =?utf-8?B?L0NzMU5Ea2h6RlE0cmtubFkyWEhJTEZpbkoxaE5QYVhzUkJpSUUyTWtQZUxt?=
 =?utf-8?B?b21LeDJHcklDRnFZeHF4M09mcVExS3ZGSGorS0g1QUJNTkxHWjRrMm9mb2VW?=
 =?utf-8?B?WUcwLzJxYjNsVDZ4QUdyM0lZd21nQWxlRW9mUENueDl1elUvOTB2OG5tWU0z?=
 =?utf-8?B?c3R0eG9OYnpPR0JSVyt6d3dYekFSOWNMRU1HazlOZWg1TkhXYXNjb1AwMVRW?=
 =?utf-8?B?SWZzL2xSVDVLbW1uck5ybWlkNFVZNG5HeXJEVXo5YWdtZ2sxTjZ4UkRZVWln?=
 =?utf-8?B?Y2JERFpkek51OWt5bEpsUlBvT1Jub2dWVExyTEoxcG8vUDFGOFNEYVduWHM3?=
 =?utf-8?B?RnYyUVJsNXF5c0hFalh2SDFSZU5rWWpUUkQrMGNPS3NQMzY5cG0rUElFZHYw?=
 =?utf-8?B?dEFDM0ZXVFdJSENpVVRreE84UlVxV0ptbTB5UXJ0MGJ3M01iaitCUU1DdDNX?=
 =?utf-8?Q?s8oU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6312.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6d8592c-b8d7-4e50-74ba-08db924fdb58
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2023 05:26:28.2986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RWedpRy1tYjM42jGtdykgH4fFek51FLRNzg8Ua2Ni75DNpEEf9SQD0Eh1fZ+aL94JLBmqKCDjW0UqwatOTkppw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4835
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 3/4] drm/i915/display: Remove
 i915_gem_object_types.h from intel_frontbuffer.h
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YNCj4gSm91bmkg
SMO2Z2FuZGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDI3LCAyMDIzIDEyOjEyIFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2NCAzLzRdIGRybS9pOTE1L2Rpc3BsYXk6IFJlbW92ZQ0KPiBpOTE1X2dlbV9vYmpl
Y3RfdHlwZXMuaCBmcm9tIGludGVsX2Zyb250YnVmZmVyLmgNCj4gDQo+IE5vdyBhcyB3ZSBoYXZl
IHJlbW92ZWQgYWxsIHRoZSByZWZlcmVuY2VzIHRvIGludGVybmFscyBvZiBpOTE1X2dlbV9vYmpl
Y3QNCj4gZnJvbSB0aGUgZnJvbnRidWZmZXIgaGVhZGVyIHdlIGNhbiBhbHNvIHJlbW92ZSBpbmNs
dWRpbmcNCj4gaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmguDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBK
b3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NClJldmlld2VkLWJ5OiBK
ZWV2YW4gQiA8amVldmFuLmJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuaCB8IDEgLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Zyb250YnVmZmVyLmgNCj4gaW5kZXggZWVjY2M4NDczMzFkLi43MmQ4OWJlMzI4
NGIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJv
bnRidWZmZXIuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zy
b250YnVmZmVyLmgNCj4gQEAgLTI4LDcgKzI4LDYgQEANCj4gICNpbmNsdWRlIDxsaW51eC9iaXRz
Lmg+DQo+ICAjaW5jbHVkZSA8bGludXgva3JlZi5oPg0KPiANCj4gLSNpbmNsdWRlICJnZW0vaTkx
NV9nZW1fb2JqZWN0X3R5cGVzLmgiDQo+ICAjaW5jbHVkZSAiaTkxNV9hY3RpdmVfdHlwZXMuaCIN
Cj4gDQo+ICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
