Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 675596ABFBA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 13:39:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1D310E364;
	Mon,  6 Mar 2023 12:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88CBA10E363
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 12:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678106378; x=1709642378;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T/M+XofXC9dcIPNmQ5SFVYu/Ucvzaxsx4FuobJ8wrJ4=;
 b=XD03vybsO0uPYhQI1VAevb6iTUSlBVllwuZx/4LwkFXa34p9EVtrgRBl
 fuY/r/+vE2g7ysKhCuNZdFxubqRHh6PeRtNGtBjRvNeXYD+DHEVbntWZ6
 +QUgKIDw2nE6EFJOlDXuRfArcPmW0NIjFLu1KrZ9NtMA81TJMshNJsAtV
 /RPHz1uL2DCNnb1K3xstaZohjRi6I9/u0hx9ncT/GTIUZ3xqduFbWi7M9
 EjIOUNe5YNvvlhpwUHFNrYmNwMIBQ/rH4UbLYh6IFMHA6iMTyoInfnM6p
 d/1VEgLjPNnhVfnqU2m/vB0YGw4lBrU5VLO2BCeYwVvrtMX6lDrYuruer A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="363159901"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="363159901"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 04:39:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="653597354"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="653597354"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 06 Mar 2023 04:39:36 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 04:39:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 04:39:36 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 04:39:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1TMvIVsouSbKohoxvTa0sYaSXx9BixoDJkqgCuhixQQnLbB6gq/VcuqgTJ+k7qfaFEE+Brvu2LHq/T0sJK1iwcI7DFfuHT5MdWFO8QLYEtc0xmS+8tr74EG1NpQ4Tf7HQVuxeHzQq+1FZNL+N4ZKymOjp+qol+hgLRGc1JrGi6G9InPnRiPsTVkjXPNspbXQH3X16IuB6su570cz0cHbaRNBpraxEgg+VorZ2V1OfLPGd1aZj3J9XVG7plESH3SJjfrv9titn+VMUW+AfR/AMQL2yd85u8V/GKgLaKBa27mN41LQFWBSTiXluD7sbVnJCoM9k/RS/jzByFLZkVkrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T/M+XofXC9dcIPNmQ5SFVYu/Ucvzaxsx4FuobJ8wrJ4=;
 b=QYM8BxyTQ5o9twiG63o/+JHpxjIsgCVL/dYEc7oKYcd3xuidi6/XTMSzik3djhvccrKEJoyg8bIRNKbXfEUyUU78sGHJLDpuZq2Vcg4F59ssOK31Ymua3sEhLAqmIF0rjnMlkIcegs4oFDBj9DrrSV27sbh6jVOFGc1omA3avvtdHsSFiVqK8CYkHQdzxKnpX0TFPp6BTt6AD0mZnvjyMuzsvrPSECfzbF8RHNP8yIRrmIiD9WWq9E2MRidrAJMWNY/VbA2Z0t6DoCi75LR4ey6EndARIHMpBZ//HjKUeFsjVn6qP9KwWMWS8Fef3qKDHr418wSLqkEMzEisR7rvSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by CY5PR11MB6140.namprd11.prod.outlook.com (2603:10b6:930:28::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 12:39:33 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73%7]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 12:39:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v10 1/6] drm/i915/gsc: Create GSC request
 submission mechanism
Thread-Index: AQHZNhzg16z/zJO050GM/4b5MnT8Sq7tzi4AgAAWzyA=
Date: Mon, 6 Mar 2023 12:39:33 +0000
Message-ID: <MWHPR11MB1741E77F5A5676EFBEE54649E3B69@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20230201090806.3008619-1-suraj.kandpal@intel.com>
 <20230201090806.3008619-2-suraj.kandpal@intel.com>
 <DM4PR11MB636077F835BC611A09283EEAF4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB636077F835BC611A09283EEAF4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|CY5PR11MB6140:EE_
x-ms-office365-filtering-correlation-id: d1bd7112-8eb5-476c-8395-08db1e3fd68a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZYPuuVRvOnGWi9PQeOTgbp0jGv0Gq9m3bcri3bIBgriXnDrJuchyQFidl6OTjAOgtWC/ZaKicohuv63DHAfgvfm9fvsSqFdOawAM7uEGmp3CQDiUSJrktRaBNksv1+AOZoihUCGdcZVR1pbEg5BQI52I4ntvpMbFXFUOxqUjRzKYrL0YnuGrsRzuoF4i/njmtj/yiUULBzYuwBlhtLQ5s5VBCOSgsnQED7V0Kinh2DNyGt3bjIEe3Xn7egeY6/b/TXfiwFKwO23RAr46srKfvV1umZni6VSuscyjf4CkeiVqbjF0ZxupLbUV9zmogZpkoqDC9NlvoBzLnx72jQEUWkMBReUZ+dZmZPzmXXVHTGckoC2J8HeZlzfYFCgLeg6dguQEAt7rxdC7A3+pjhO9Z1ljPIE5yfHcS+DU6LAj/agGGo5t7PWmefs+Xgik6QNPGMmPgzqBoXMItjzfLnRYZ2QKrhig3tdPjxeJuNmU+ehCtlPBT8wPyCy2TdxXDM9Aru5H1YpVWwcpfHg+8DfA4Je/ZMSDG60adxjdREq69VdMGyJnJm7gptdi43h/1rTBKkK0+Y0fjVV0/EXMD7j+7Isvyp3eQSZ77QQEGnnZPQ6FoXU/c4+NcCvchN3Lh9yQaKmqi6fshGcJtb8UnobsItZUXreCDhUoQR0U562c9laV4/HCob9gpAATqh3IULyUw0xjWtpV1Y63v0ganGrJSQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(39860400002)(396003)(366004)(346002)(451199018)(33656002)(4326008)(76116006)(66556008)(66946007)(41300700001)(64756008)(8936002)(66446008)(66476007)(8676002)(2906002)(5660300002)(122000001)(82960400001)(86362001)(38100700002)(38070700005)(7696005)(107886003)(71200400001)(55016003)(478600001)(110136005)(316002)(52536014)(83380400001)(6506007)(9686003)(53546011)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eERDbHZUVlFnTDZDcjhSOUpVMmljM01rb3k5MWdqOUp4WkVNUlM3Ry9CZTFn?=
 =?utf-8?B?UFdLeUd4OW0zVTdWVHRvL2dSTCtFTTJFYTNWbEU1ZFRoc0lUTG1nNFVucFBu?=
 =?utf-8?B?VXk4N3hIZWV0emkzQ2ZYS3VObHF4M09GcW1EeUNNWFhqOTVUaXdkWEt4MTJv?=
 =?utf-8?B?d2xhKzRwRnBRbkZFV1E1UW5jRTBFZ3pEam55VFVVbGhVUUJTL2pkUWxjVlNx?=
 =?utf-8?B?NEJZVzBGOURCRFM4SG9IbERyT2dORE81RnBpS1N4TVR3R1cwc0dFWWhtVVhB?=
 =?utf-8?B?T0tld0gwNEQ1dlFIamY2VWVYZ084NmNHL2JQQ2hDVVZ4UVdwazB4OGtkVWhR?=
 =?utf-8?B?UVlDb0FaUXR1OG1qL0Z5ZnFsT3ZZeW9paFVvRlgrNVRqZnREMVFsbmhzTzhy?=
 =?utf-8?B?WGVrcFV0dEdQcjhXVjQ0c3JIVVJ5cVVKbzd3eWp2Z1B3L1AwdWpQa1hTency?=
 =?utf-8?B?aTRKY3BBcWorYktjK3kzTVpFd0JHZEJYeGgrTGx3T3A1RXNFVEtUaExZU0Zq?=
 =?utf-8?B?YjZEVlFNdnNSeTJYUzlDRkdmQWpzWEVhbzlCYWlNMlQ1WUphWEpNNFdQRjY4?=
 =?utf-8?B?VEdrUUFyYUJWcU1GU0RlcVJyYkVJSDl0K2xtbXZkQlgyMllmT1hiWnhmeU1O?=
 =?utf-8?B?eGpXS2ZUT2pkQ0JtNUxPSjBlMER1SmtwSnhzbGpqeUpLNDFwK0o0VkwzclJO?=
 =?utf-8?B?VDNsUnlVdHM2NjFTY1A1TitBMXNsc3RGRHBLWXp6VG5ubktoSTlQK096MGxs?=
 =?utf-8?B?UUdPUW05THYzM1J5OUdpVHc0NWFJZkg4bFJHYW5ieStTUGE1czlZckJmdE5u?=
 =?utf-8?B?MXpKdXdXZjVrZTlLZzd0b25xSHJhSWE4VGhiRm1Wb29ocjFpNEFvaU81cTFK?=
 =?utf-8?B?Yms4TnJ1NGZHTVlzSnJTanVMbkpnU0s1dHk3L0F2U3UxSnNUcFVKcUJJeFoz?=
 =?utf-8?B?bkRhbllObTBDL3JjS0hJYkZ0d2ZURmRUY1RMT2VyVHNSckZIbHNycHVSZzVD?=
 =?utf-8?B?U0E3aFdrdklyWVhRUlYxdFZwMkVoblVMM3dmajRlTjNwcnlWMloyV3ZNZ0Vv?=
 =?utf-8?B?M21mZGFQYng1ajc5b1RLUDBZUHpHbW55ekFtTTM4R2lpU211dWtoa0VuRmp0?=
 =?utf-8?B?bWt4Uk04WGZhcUdrQk9tVHoyS0NJS3pvQ0RDMnkreXpFZ3ArelkwOWFDZC9M?=
 =?utf-8?B?Q3NzY253Wmx3bitWS0VCYWk3OUFFL08vLytpdmM5ZUQ0Uit5MjY1dFdvRVBS?=
 =?utf-8?B?ZFRYZVMxbG1yVVYzN0pVYlBJZHNZbWRDSVNKS3pHNGVpbjJuUElGQ3VkNkhx?=
 =?utf-8?B?em53V0N5WndSd2hIVXRuaWt3TXlNdFNVcjA2dWUvWEhrdUNiUHFHNm5ZZkk1?=
 =?utf-8?B?R090Q1RWdWtBSWZFMDNMeXNOK05iQVdBRkFTQ2NDWjRzSUJZa3BvOHU2bVNa?=
 =?utf-8?B?NmxKRWl4aGdEUmF5UW5UR2JOY3plS3hUaTdlRWVxMklhbDNpem0vRXhrM2x2?=
 =?utf-8?B?N1M1YzJHaWlFeGNNZVQ1THJMaTEvUFZuclhGcXZlbXYzK0NYSzVQMEJBSHpa?=
 =?utf-8?B?d29ITk9kTXpBOWlhTHRpSmNHdkMxaFI5WFZ6U1hEeEhQT0NUMVJNYTBBL1JR?=
 =?utf-8?B?ZG5Mc0l3Ukl2U0dmVzdCQkw3RGNBcEVpVkFFZC9iQThZWE9mWEg0ZFN1ZFF2?=
 =?utf-8?B?Mll0clpqbDZDK1NaRkdzMHBnRHIwQ2JEVFVEUHRmdEhlai93TFEyRmZNMVJZ?=
 =?utf-8?B?U003djlwZmc4bWhxa016NWp2ZktIVHlTNHQ5QXJ2MzRTUnBsSC9OSTBzaTNX?=
 =?utf-8?B?NlJ0ZE81WnVldk9mbU9MdjhGOHpJTzdnaFNJT2ZKZVJOdEJwanQvN2Z1U0Y0?=
 =?utf-8?B?WnNxVE1rWW8rNmx2R3hMZXlTYWhLWGh4aVB2bm9PQmVHdjRlNEFTVXNxdTdM?=
 =?utf-8?B?ekNpSE82eFczbi9CeGVydXc5a2RFK1VGV3FlN3pOZ0g0L2g0bHdOREd4QVcx?=
 =?utf-8?B?VjRSc0R6NUx0YkVUejl5ZnRCVXpqdW5sanVTK3BDeGhkRXhBL1JTY0RtRkM2?=
 =?utf-8?B?VElHVjViMzVuWkFaS1Y3SkswMm5pQzBxVllwOWx3YWdmeUtuaGVRMTVmWHNM?=
 =?utf-8?Q?bolVtWvl6vvnWy1cZ/WHaNGAH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1bd7112-8eb5-476c-8395-08db1e3fd68a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 12:39:33.4075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EXerFzR15N0twZ21pRxosS4ljwVfYxbzqOIfZBEr2C3MRVykxv42W4zkwiQ6+iOiMgnHgMuX/vrxsJQ15u56PA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6140
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 1/6] drm/i915/gsc: Create GSC request
 submission mechanism
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
Cc: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YNCj4g
PiBTdXJhaiBLYW5kcGFsDQo+ID4gU2VudDogV2VkbmVzZGF5LCBGZWJydWFyeSAxLCAyMDIzIDI6
MzggUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBU
ZXJlcyBBbGV4aXMsIEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwu
Y29tPg0KPiA+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCB2MTAgMS82XSBkcm0vaTkxNS9n
c2M6IENyZWF0ZSBHU0MgcmVxdWVzdA0KPiA+IHN1Ym1pc3Npb24gbWVjaGFuaXNtDQo+ID4NCj4g
PiBIRENQIGFuZCBQWFAgd2lsbCByZXF1aXJlIGEgY29tbW9uIGZ1bmN0aW9uIHRvIGFsbG93IGl0
IHRvIHN1Ym1pdA0KPiA+IGNvbW1hbmRzIHRvIHRoZSBnc2MgY3MuIEFsc28gYWRkaW5nIHRoZSBn
c2MgbXRsIGhlYWRlciB0aGF0IG5lZWRzIHRvDQo+ID4gYmUgYWRkZWQgb24gdG8gdGhlIGV4aXN0
aW5nIHBheWxvYWRzIG9mIEhEQ1AgYW5kIFBYUC4NCj4gPg0KPiA+IC0tdjQNCj4gPiAtU2VwcmF0
ZSBnc2MgbG9hZCBhbmQgaGVjaSBjbWQgc3VibWlzc2lvbiBpbnRvIGRpZmZlcmVudCBmdW5jdGlv
bnMgaW4NCj4gPiBkaWZmZXJlbnQgZmlsZXMgZm9yIGJldHRlciBzY2FsYWJpbGl0eSBbQWxhbl0g
LVJlbmFtZSBnc2MgYWRkcmVzcw0KPiA+IGZpZWxkIFtBbGFuXQ0KPiA+DQo+ID4gQ2M6IERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+ID4g
Q2M6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWw8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+
ID4gUmV2aWV3ZWQtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgfCAgMSArDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dw
dV9jb21tYW5kcy5oICB8ICAyICsNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3NjX2Z3LmggICAgIHwgIDEgKw0KPiA+ICAuLi4vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNf
aGVjaV9jbWRfc3VibWl0LmMgfCA5NA0KPiA+ICsrKysrKysrKysrKysrKysrKysgLi4uL2k5MTUv
Z3QvdWMvaW50ZWxfZ3NjX3VjX2hlY2lfY21kX3N1Ym1pdC5oIHwgNDUNCj4gPiArKysrKysrKysN
Cj4gPiAgNSBmaWxlcyBjaGFuZ2VkLCAxNDMgaW5zZXJ0aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQNCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVj
aV9jbWRfc3VibWl0LmMNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0DQo+ID4gZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3NjX3VjX2hlY2lfY21kX3N1Ym1pdC5oDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlIGluZGV4IDkxODQ3MGEwNDU5MS4uNDgyOTI4Y2ZmYjFjDQo+
ID4gMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQ0KPiA+IEBAIC0xOTUsNiArMTk1LDcg
QEAgaTkxNS15ICs9IFwNCj4gPiAgaTkxNS15ICs9IFwNCj4gPiAgCSAgZ3QvdWMvaW50ZWxfZ3Nj
X2Z3Lm8gXA0KPiA+ICAJICBndC91Yy9pbnRlbF9nc2NfdWMubyBcDQo+ID4gKwkgIGd0L3VjL2lu
dGVsX2dzY191Y19oZWNpX2NtZF9zdWJtaXQub1wNCj4gPiAgCSAgZ3QvdWMvaW50ZWxfZ3VjLm8g
XA0KPiA+ICAJICBndC91Yy9pbnRlbF9ndWNfYWRzLm8gXA0KPiA+ICAJICBndC91Yy9pbnRlbF9n
dWNfY2FwdHVyZS5vIFwNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3B1X2NvbW1hbmRzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2dwdV9jb21tYW5kcy5oDQo+ID4gaW5kZXggMmFmMWFlMzgzMWRmLi40NTQxNzk4ODQ4MDEgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRz
LmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMu
aA0KPiA+IEBAIC00MzksNiArNDM5LDggQEANCj4gPiAgI2RlZmluZSBHU0NfRldfTE9BRCBHU0Nf
SU5TVFIoMSwgMCwgMikNCj4gPiAgI2RlZmluZSAgIEhFQ0kxX0ZXX0xJTUlUX1ZBTElEICgxIDw8
IDMxKQ0KPiA+DQo+ID4gKyNkZWZpbmUgR1NDX0hFQ0lfQ01EX1BLVCBHU0NfSU5TVFIoMCwgMCwg
NikNCj4gPiArDQo+ID4gIC8qDQo+ID4gICAqIFVzZWQgdG8gY29udmVydCBhbnkgYWRkcmVzcyB0
byBjYW5vbmljYWwgZm9ybS4NCj4gPiAgICogU3RhcnRpbmcgZnJvbSBnZW44LCBzb21lIGNvbW1h
bmRzIChlLmcuIFNUQVRFX0JBU0VfQUREUkVTUywgZGlmZg0KPiA+IC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3NjX2Z3LmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2dzY19mdy5oDQo+ID4gaW5kZXggNGI1ZGJiNDRhZmI0Li4xNDZhYzAx
MjhmNjkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3NjX2Z3LmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2Nf
ZncuaA0KPiA+IEBAIC0xMiw0ICsxMiw1IEBAIHN0cnVjdCBpbnRlbF9nc2NfdWM7DQo+ID4NCj4g
PiAgaW50IGludGVsX2dzY191Y19md191cGxvYWQoc3RydWN0IGludGVsX2dzY191YyAqZ3NjKTsg
IGJvb2wNCj4gPiBpbnRlbF9nc2NfdWNfZndfaW5pdF9kb25lKHN0cnVjdCBpbnRlbF9nc2NfdWMg
KmdzYyk7DQo+ID4gKw0KPiANCj4gVGhpcyByZWR1bmRhbnQgYW5kIHVucmVsYXRlZCBjaGFuZ2Ug
Y2FuIGJlIGRyb3BwZWQuDQo+IA0KDQpPa2F5IGdvdCBpdCwNCg0KUmVnYXJkLA0KU3VyYWogS2Fu
ZHBhbA0KPiA+ICAjZW5kaWYNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3NjX3VjX2hlY2lfY21kX3N1Ym1pdC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0LmMNCj4gPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uYmUyNDI0YWY1MjFkDQo+ID4g
LS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2dzY191Y19oZWNpX2NtZF9zdWJtaXQuYw0KPiA+IEBAIC0wLDAgKzEsOTQgQEANCj4gPiArLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVA0KPiA+ICsvKg0KPiA+ICsgKiBDb3B5cmlnaHQg
wqkgMjAyMyBJbnRlbCBDb3Jwb3JhdGlvbiAgKi8NCj4gPiArDQo+ID4gKyNpbmNsdWRlICJndC9p
bnRlbF9lbmdpbmVfcG0uaCINCj4gPiArI2luY2x1ZGUgImd0L2ludGVsX2dwdV9jb21tYW5kcy5o
Ig0KPiA+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCINCj4gPiArI2luY2x1ZGUgImd0L2ludGVs
X3JpbmcuaCINCj4gPiArI2luY2x1ZGUgImludGVsX2dzY191Y19oZWNpX2NtZF9zdWJtaXQuaCIN
Cj4gPiArDQo+ID4gK3N0cnVjdCBnc2NfaGVjaV9wa3Qgew0KPiA+ICsJdTY0IGFkZHJfaW47DQo+
ID4gKwl1MzIgc2l6ZV9pbjsNCj4gPiArCXU2NCBhZGRyX291dDsNCj4gPiArCXUzMiBzaXplX291
dDsNCj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgZW1pdF9nc2NfaGVjaV9wa3Qoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEsIHN0cnVjdA0KPiA+ICtnc2NfaGVjaV9wa3QgKnBrdCkgew0K
PiA+ICsJdTMyICpjczsNCj4gPiArDQo+ID4gKwljcyA9IGludGVsX3JpbmdfYmVnaW4ocnEsIDgp
Ow0KPiA+ICsJaWYgKElTX0VSUihjcykpDQo+ID4gKwkJcmV0dXJuIFBUUl9FUlIoY3MpOw0KPiA+
ICsNCj4gPiArCSpjcysrID0gR1NDX0hFQ0lfQ01EX1BLVDsNCj4gPiArCSpjcysrID0gbG93ZXJf
MzJfYml0cyhwa3QtPmFkZHJfaW4pOw0KPiA+ICsJKmNzKysgPSB1cHBlcl8zMl9iaXRzKHBrdC0+
YWRkcl9pbik7DQo+ID4gKwkqY3MrKyA9IHBrdC0+c2l6ZV9pbjsNCj4gPiArCSpjcysrID0gbG93
ZXJfMzJfYml0cyhwa3QtPmFkZHJfb3V0KTsNCj4gPiArCSpjcysrID0gdXBwZXJfMzJfYml0cyhw
a3QtPmFkZHJfb3V0KTsNCj4gPiArCSpjcysrID0gcGt0LT5zaXplX291dDsNCj4gPiArCSpjcysr
ID0gMDsNCj4gPiArDQo+ID4gKwlpbnRlbF9yaW5nX2FkdmFuY2UocnEsIGNzKTsNCj4gPiArDQo+
ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4gPiAraW50IGludGVsX2dzY191Y19oZWNp
X2NtZF9zdWJtaXRfcGFja2V0KHN0cnVjdCBpbnRlbF9nc2NfdWMgKmdzYywgdTY0DQo+IGFkZHJf
aW4sDQo+ID4gKwkJCQkJdTMyIHNpemVfaW4sIHU2NCBhZGRyX291dCwNCj4gPiArCQkJCQl1MzIg
c2l6ZV9vdXQpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9IGdzYy0+
Y2U7DQo+ID4gKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsNCj4gPiArCXN0cnVjdCBnc2NfaGVj
aV9wa3QgcGt0ID0gew0KPiA+ICsJLmFkZHJfaW4gPSBhZGRyX2luLA0KPiA+ICsJLnNpemVfaW4g
PSBzaXplX2luLA0KPiA+ICsJLmFkZHJfb3V0ID0gYWRkcl9vdXQsDQo+ID4gKwkuc2l6ZV9vdXQg
PSBzaXplX291dA0KPiA+ICsJfTsNCj4gPiArCWludCBlcnI7DQo+ID4gKw0KPiA+ICsJaWYgKCFj
ZSkNCj4gPiArCQlyZXR1cm4gLUVOT0RFVjsNCj4gPiArDQo+ID4gKwlycSA9IGk5MTVfcmVxdWVz
dF9jcmVhdGUoY2UpOw0KPiA+ICsJaWYgKElTX0VSUihycSkpDQo+ID4gKwkJcmV0dXJuIFBUUl9F
UlIocnEpOw0KPiA+ICsNCj4gPiArCWlmIChjZS0+ZW5naW5lLT5lbWl0X2luaXRfYnJlYWRjcnVt
Yikgew0KPiA+ICsJCWVyciA9IGNlLT5lbmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1iKHJxKTsN
Cj4gPiArCQlpZiAoZXJyKQ0KPiA+ICsJCQlnb3RvIG91dF9ycTsNCj4gPiArCX0NCj4gPiArDQo+
ID4gKwllcnIgPSBlbWl0X2dzY19oZWNpX3BrdChycSwgJnBrdCk7DQo+ID4gKw0KPiA+ICsJaWYg
KGVycikNCj4gPiArCQlnb3RvIG91dF9ycTsNCj4gPiArDQo+ID4gKwllcnIgPSBjZS0+ZW5naW5l
LT5lbWl0X2ZsdXNoKHJxLCAwKTsNCj4gPiArDQo+ID4gK291dF9ycToNCj4gPiArCWk5MTVfcmVx
dWVzdF9nZXQocnEpOw0KPiA+ICsNCj4gPiArCWlmICh1bmxpa2VseShlcnIpKQ0KPiA+ICsJCWk5
MTVfcmVxdWVzdF9zZXRfZXJyb3Jfb25jZShycSwgZXJyKTsNCj4gPiArDQo+ID4gKwlpOTE1X3Jl
cXVlc3RfYWRkKHJxKTsNCj4gPiArDQo+ID4gKwlpZiAoIWVyciAmJiBpOTE1X3JlcXVlc3Rfd2Fp
dChycSwgMCwgbXNlY3NfdG9famlmZmllcyg1MDApKSA8IDApDQo+ID4gKwkJZXJyID0gLUVUSU1F
Ow0KPiA+ICsNCj4gPiArCWk5MTVfcmVxdWVzdF9wdXQocnEpOw0KPiA+ICsNCj4gPiArCWlmIChl
cnIpDQo+ID4gKwkJZHJtX2VycigmZ3NjX3VjX3RvX2d0KGdzYyktPmk5MTUtPmRybSwNCj4gPiAr
CQkJIlJlcXVlc3Qgc3VibWlzc2lvbiBmb3IgR1NDIGhlY2kgY21kIGZhaWxlZCAoJWQpXG4iLA0K
PiA+ICsJCQllcnIpOw0KPiA+ICsNCj4gPiArCXJldHVybiBlcnI7DQo+ID4gK30NCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3NjX3VjX2hlY2lfY21k
X3N1Ym1pdC5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNf
aGVjaV9jbWRfc3VibWl0LmgNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAw
MDAwMDAwMDAwMC4uY2Y2MTBkZmNhN2E1DQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2dzY191Y19oZWNpX2NtZF9zdWJtaXQuaA0K
PiA+IEBAIC0wLDAgKzEsNDUgQEANCj4gPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1J
VCAqLw0KPiA+ICsvKg0KPiA+ICsgKiBDb3B5cmlnaHQgwqkgMjAyMyBJbnRlbCBDb3Jwb3JhdGlv
biAgKi8NCj4gPiArDQo+ID4gKyNpZm5kZWYgX0lOVEVMX0dTQ19VQ19IRUNJX0NNRF9TVUJNSVRf
SF8gI2RlZmluZQ0KPiA+ICtfSU5URUxfR1NDX1VDX0hFQ0lfQ01EX1NVQk1JVF9IXw0KPiA+ICsN
Cj4gPiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+DQo+ID4gKw0KPiA+ICtzdHJ1Y3QgaW50ZWxf
Z3NjX3VjOw0KPiA+ICtzdHJ1Y3QgaW50ZWxfZ3NjX210bF9oZWFkZXIgew0KPiA+ICsJdTMyIHZh
bGlkaXR5X21hcmtlcjsNCj4gPiArI2RlZmluZSBHU0NfSEVDSV9WQUxJRElUWV9NQVJLRVIgMHhB
NTc4ODc1QQ0KPiA+ICsNCj4gPiArCXU4IGhlY2lfY2xpZW50X2lkOw0KPiA+ICsjZGVmaW5lIEhF
Q0lfTUVBRERSRVNTX1BYUCAxNw0KPiA+ICsjZGVmaW5lIEhFQ0lfTUVBRERSRVNTX0hEQ1AgMTgN
Cj4gPiArDQo+ID4gKwl1OCByZXNlcnZlZDE7DQo+ID4gKw0KPiA+ICsJdTE2IGhlYWRlcl92ZXJz
aW9uOw0KPiA+ICsjZGVmaW5lIE1UTF9HU0NfSEVBREVSX1ZFUlNJT04gMQ0KPiA+ICsNCj4gPiAr
CXU2NCBob3N0X3Nlc3Npb25faGFuZGxlOw0KPiA+ICsJdTY0IGdzY19tZXNzYWdlX2hhbmRsZTsN
Cj4gPiArDQo+ID4gKwl1MzIgbWVzc2FnZV9zaXplOyAvKiBsb3dlciAyMCBiaXRzIG9ubHksIHVw
cGVyIDEyIGFyZSByZXNlcnZlZCAqLw0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiBGbGFncyBt
YXNrOg0KPiA+ICsJICogQml0IDA6IFBlbmRpbmcNCj4gPiArCSAqIEJpdCAxOiBTZXNzaW9uIENs
ZWFudXA7DQo+ID4gKwkgKiBCaXRzIDItMTU6IEZsYWdzDQo+ID4gKwkgKiBCaXRzIDE2LTMxOiBF
eHRlbnNpb24gU2l6ZQ0KPiA+ICsJICovDQo+ID4gKwl1MzIgZmxhZ3M7DQo+ID4gKw0KPiA+ICsJ
dTMyIHN0YXR1czsNCj4gPiArfSBfX3BhY2tlZDsNCj4gPiArDQo+ID4gK2ludCBpbnRlbF9nc2Nf
dWNfaGVjaV9jbWRfc3VibWl0X3BhY2tldChzdHJ1Y3QgaW50ZWxfZ3NjX3VjICpnc2MsDQo+ID4g
KwkJCQkJdTY0IGFkZHJfaW4sIHUzMiBzaXplX2luLA0KPiA+ICsJCQkJCXU2NCBhZGRyX291dCwg
dTMyIHNpemVfb3V0KTsNCj4gPiArI2VuZGlmDQo+ID4gLS0NCj4gPiAyLjI1LjENCg0K
