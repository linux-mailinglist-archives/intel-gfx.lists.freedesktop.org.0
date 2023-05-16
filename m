Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E88704A60
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 12:22:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A2AA10E332;
	Tue, 16 May 2023 10:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE26B10E342
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 10:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684232551; x=1715768551;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KF7J5pyVuw4+Zu4qpXhRkEPm9Wx57TLRFLpBdG2Hg2E=;
 b=QWbKwteisvl5pmUf0qVmX5mkMrMFOG6QCKbdAlff0kp3irwCq7UW/Xev
 vC8/xyP4uKhLsoZBaUw2hP2+aQ4RuTRJRlBEtl3yDPKNVyfpWasHVWUnc
 fhZMLQcinbURqTP7EpMtnMF+ltyrxn2vYmbG0KQ185thgnv41Genv1KLv
 obVn4FmwWO3aaVZIlOXyeOPbnD8YgFUbxnGMD1s0TwUTjZTivZGHROB1C
 AzIzO++XDhOvF4PT5IlHw/ZPZdUHfiTqAByeBLsRYo+uECiPRap4dYejE
 KtGIL53XvvAmSp2PAP9xRu+IMAgyMGk1bzIIqJ+ZYbnIZAIcDFt85LbBU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="414847826"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="414847826"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 03:22:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="845627440"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="845627440"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2023 03:22:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 03:22:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 03:22:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 03:22:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 03:22:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PrdG/ccBa5xBWSeRtkd5jAeEVb2UPsuj5HAWC61j8eLbXpp82hTyxuem0jyuOE6fnLEAgI+fw8cb5hwnKa6wud5YVtcrPiIhp0dGMHFmGIJsHAkcUxD2qELbXLVPUH2962EXhZfYLF+oC1UqiSuhDpWr80KYsIsl8FkeQOSNMgjKxk4ueASmjFdihtPldPj1FAfBsFALrma+ZR+dtO7YyePGdGWsDyW4q7IBkBGQYjVBdle8tFStrNOi2gWbWoFqOHa/WpnrWzbmW/p8EBVOrTQGTX9WMuJ8fsQ1Q2wMaEXHMazu0+0W8O/S8X1mW16DJqDzv/F9ohqqKOoXibTl+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KF7J5pyVuw4+Zu4qpXhRkEPm9Wx57TLRFLpBdG2Hg2E=;
 b=LweH/Hct+RwATsoJkmArCmNMFucd6NNBUNaw7vqoIS9JCJv4VY0qWPtuqqZn0ujwBy4lYKs2BurKh8Mp1JNlWkzhtFXqavg/JxfUYbzN4xDX3zeIwPNqZsfBnOpwR48+yPLZMCwyP+8pQ1Umf9OEwtYLhLyuSyvewRIEq97biPREbL75Z1qf8Y2NCdHFeK0K8QdDZjO+j4oeIxbCBp7DahwbN7Dazg50nH6QBrIwgymla743TPVfLchBC39e8RTEEQNdAwb9h7tmsHKMRV5e1UNH0n5romzyNGPi0Lu1+nXnc44BMnq8/xEQkDA7Xf3s+auXunZF37wUpBPhRDULvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB5310.namprd11.prod.outlook.com (2603:10b6:5:391::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Tue, 16 May
 2023 10:22:27 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c%3]) with mapi id 15.20.6387.030; Tue, 16 May 2023
 10:22:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: tweak language in fastset pipe
 config compare logging
Thread-Index: AQHZh9sJonEyCZL+iUKZtLTzNHTaaa9csGvw
Date: Tue, 16 May 2023 10:22:27 +0000
Message-ID: <SN7PR11MB67505AA3120196D8E8E684FDE3799@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230516094406.2675307-1-jani.nikula@intel.com>
In-Reply-To: <20230516094406.2675307-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB5310:EE_
x-ms-office365-filtering-correlation-id: 18440231-330f-40cc-1a86-08db55f772d9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: davTdylfDterTBmnP7tHDCyu7W36hrC1549OgRZ6QOwvIYwGwcQWdlEgFxc1XXPhas8LbI5EuQSPciffVZ1ZjMHXGj8veEdlyPxCJSCx1CyQbya86xv63nt/VzCudkVuXbwOXRxsfM2U9P4FmoayNzyCLoVD86GflwAcMLgcqY540ZQNf9OUbWZWmT9ATbieM73wJWgBM2mxnBKLXq1NDm5pT5llm3RfiyyguEGCVBG3vrvTpz1Qjb0Fe5MflEukLMePdvOlgQO3c9HOJ2brGUYfnpL2l5qHC4aighmEeGLpUs9jm00VP7TWfbsrNns2vGo9dmHjWL7NrF5rc24SCozVsZfoSzK3shcKLN/+kvgRWHa5Nz+pgVBJSGwufs4dZ0AAEGZh7Z2qovllgPLuxBJhqPWFQc5NZ/omKbSKken4C6QCq4gcFa/orMDiF7LjLXWgglQKrMv9gsLFxxq8KkhamiVoSnCi0kmyqV8ozJ3cHeayeCUKwRPAICoaUThLvFr3mhDJzV1l8KKrR9ZG9ZX9RSg3r2WwE8/IV3XyRhjqLqeTAhSaneJw2wNTnFj/07x63r6dLCN7Uz1prtAjcOaupSZKjkeme4b7BLFFHbDN+EA461tHtMwQnAg22M5Y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(346002)(396003)(136003)(451199021)(55016003)(86362001)(38070700005)(33656002)(2906002)(316002)(66556008)(76116006)(66946007)(4326008)(66446008)(64756008)(38100700002)(7696005)(478600001)(110136005)(66476007)(83380400001)(107886003)(9686003)(122000001)(52536014)(8936002)(8676002)(186003)(6506007)(26005)(41300700001)(5660300002)(71200400001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RC9BeEY0aDM5YjdjMzkwU2ZjNFdEK0lHVWRQakJoN1ZOV0RiVDNlZ3lsV1Bh?=
 =?utf-8?B?WlZKUE92dzdSRUpkTXRFOTNBTm1jeS93dEhjNWtJYnVpOXhaUlZCRFB5SGR1?=
 =?utf-8?B?MlpyZWRpV2hmd3d0RkxmNElxbEdCNGtVK2QvMDF1SCt3Y2hwMHhlVDhWN3k3?=
 =?utf-8?B?eDVJNEdCc3RBUXpLRVVRbXlRc01XMjBCcVVhUkZtZ2Vwb054QnFFWENOckQw?=
 =?utf-8?B?MGxkVGFMSU9nYWc0eWR0a0dKY1h1NWxWNjNOWVBhYjRxTVMvVi8wa2w2Rlk5?=
 =?utf-8?B?c3NtcFE3bEtQUFloTXY4NFhERHR2NVh2V3c4d2QwS3RwbjBzR2J3ZC9PNjV1?=
 =?utf-8?B?VlM4WXFuSUhXcU9iZitzZnUyZVJST0c1QnhPZEFLa1JmbU04Y05VYnRNbjZI?=
 =?utf-8?B?ZlAvVG9ONkoyWEhDU0JVUzVRdHJBS040eDE1TElZdnBUK3FKZDhKT2VGRVN4?=
 =?utf-8?B?bW5lNk5LSzdHS0RMVHQwamwydEdkNDRHWlZmUlI0czlyeUpJNzlPczlhNU5p?=
 =?utf-8?B?eDJOdDZWdW4zaDZKSjVIK0Q2WU50aS90d25OZmxLMzlBTDNjZ1ZaRHlrVU80?=
 =?utf-8?B?S2FSaEpJMkdrZUNVQy9VRTJudDdBUWxaMGJWN1kxZHhxMUwvbWFxSVlBeTVM?=
 =?utf-8?B?bXBubzBZVGdEMC9PNTh6d1U2SjdMMW90dXgxbGswQ0wwdWh5cG45UWVQMWI1?=
 =?utf-8?B?bitGNkRSRkhIcnNORytnejFWV1V0aU53VlFsNjNhNjFWNCt1ZDMyZVo1S2lo?=
 =?utf-8?B?WXdWR21tdHpjWHMzVW5sSnYwOFdRT3V1L0lQc1c0M3I2MVY3TmVMTFNDaWV5?=
 =?utf-8?B?TG16cDVuNjE5RmE0UE5WRVdzQzMzbmJXVzAwSTRxQVo0OE40NFdUUmo0NWZQ?=
 =?utf-8?B?QTJVTWNDNm1HQm5FMUJHNTAwN3NabkU1U3pCN3BqcE9wSC84ZjdKdnZ6QUY2?=
 =?utf-8?B?VTVrV3JWUHpaTWJ6MVRIU2xpZW1PRlVTZFJkdG9HbmlyL0NrelNzb0x6MGJG?=
 =?utf-8?B?NDhnUktVcHBGZTROdnBpUmlGRWpzekowQUFNODFaVG1DTEFHQUR4UGk4RGRQ?=
 =?utf-8?B?alVKaWxuRnlQNFlyS1VVZnhSWXNDaE8yZmViclRCRzQvNGhqRGh3TGxBQlJh?=
 =?utf-8?B?RFJwaERxTlZpWGhBa3NDeDVrenJ3bDZnOXpUSVd5ank3RGUzYllaWUM1a0c5?=
 =?utf-8?B?NDRINGNZWmlCbGl5TTZOV0M0T1FJQ3BHTzRweXdtQnEwSUNwVWZWRXdhYmpa?=
 =?utf-8?B?QTJlbVFJYUYzNGx1S3QrMThUSVpBNWMrdmhVRG9tMUdzUTREcWkyc0YzSWkz?=
 =?utf-8?B?WU95NDd3Q2ZnZ2NqalF6Qjh0bDU4RFhYWnFUY3orN09TUWRYV25lVWhkcnFK?=
 =?utf-8?B?TWhGQmUwV3k4WHJsUWYzQndQajVMSmpuT1BvODdWemhqZFlaeUdiZGdTRlJh?=
 =?utf-8?B?YkQzbUZTZjZ1VE5tdzE4OE1CNnNuM3NxT3dHQVcyWHliaGJma0ZIcEdvL0RY?=
 =?utf-8?B?dlViSlR0VHZOSmgxYW1rZDVsNGUwdHlGVUxUa29SQnFhdmRzSDREWjVZUE10?=
 =?utf-8?B?d1ZXTENwQThKd1pJVnpZV2IrTCs5aktEZXVvRUpYQW1uQ3YwUDZrd3M0aCta?=
 =?utf-8?B?VnZQdHpNbXp6RTNkS21JRDRsejY4UnlyTm9GclNMUExGYkQ0YS9oL3RpL2lI?=
 =?utf-8?B?R0R4WmFqUUoxdGRoZEhROTQ3MElCT0Vsa09Ga3ZMTEhmbElMbHA0UC9RRDBC?=
 =?utf-8?B?MmNGVFpvd2lMcDE4ekk2ZCsySlRyclBMa1NQOC9tck9ZQXhVK1FKand6OUl6?=
 =?utf-8?B?ZzNsVUJkYTJsTzE1MEFZL0Y2dXUwaTUyMnQwZ3lXRHZsZ3g3NDRTUE85MmRJ?=
 =?utf-8?B?ZE9jOUVPS1BhcFZtd1pxb0ZMNU5YRjdOeVlwTE00TmREbVBydlMyMWhnS3M3?=
 =?utf-8?B?ajFyaDJPQTA0ZEJRRm9YT1BFZzhYWTFqVGQ4RUlXMVAzdzk3MHY3N01xWitS?=
 =?utf-8?B?T1ZoOXRTTEt3WXZiOVlNQUEvN2VZT05ka3dHNUZGdGthNUNKYnRWZ01DQ3Bx?=
 =?utf-8?B?M2xKSEtwN1NBc2ZvK2hrU0p2OHBnSWRUd3RGYmZXZGdSK3ZBZ3NDYlkvOGUv?=
 =?utf-8?Q?PJXmNiP+LsITO5smmVL6jATYo?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18440231-330f-40cc-1a86-08db55f772d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2023 10:22:27.4885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: STQZ34xn0f66KRE+L3lLI2YNP6Ii9ftnp9xCTctQkfpf/RJds/+r+8N5wh34RHC5OVprMtif5dPspPOD49qgzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5310
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: tweak language in fastset pipe
 config compare logging
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiANCj4gVGhlICJmYXN0c2V0IG1pc21hdGNoIiBkZWJ1ZyBsb2dnaW5nIGhhcyBiZWVuIHNsaWdo
dGx5IGNvbmZ1c2luZywgbGVhZGluZw0KPiBwZW9wbGUgdG8gYmVsaWV2ZSBzb21lIGVycm9yIGhh
cHBlbmVkLiBDaGFuZ2UgaXQgdG8gdGhlIG1vcmUgaW5mb3JtYXRpdmUNCj4gImZhc3RzZXQgcmVx
dWlyZW1lbnQgbm90IG1ldCIsIGFuZCBhZGQgYSBmaW5hbCBtZXNzYWdlIGFib3V0IHRoaXMgbGVh
ZGluZyB0bw0KPiBmdWxsIG1vZGVzZXQuDQo+IA0KDQpMR1RNLiANCg0KUmV2aWV3ZWQtYnk6IFN1
cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQo+IENjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTUgKysrKysrKysrKy0tLS0tDQo+
ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGlu
ZGV4IDRiNzBiMzg5ZTBjYi4uOGFmYmFmOGQxMTk2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtNDg1Nyw3ICs0ODU3LDcgQEAg
cGlwZV9jb25maWdfaW5mb2ZyYW1lX21pc21hdGNoKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwNCj4gIAkJCXJldHVybjsNCj4gDQo+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJp
di0+ZHJtLA0KPiAtCQkJICAgICJmYXN0c2V0IG1pc21hdGNoIGluICVzIGluZm9mcmFtZVxuIiwg
bmFtZSk7DQo+ICsJCQkgICAgImZhc3RzZXQgcmVxdWlyZW1lbnQgbm90IG1ldCBpbiAlcyBpbmZv
ZnJhbWVcbiIsDQo+IG5hbWUpOw0KPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgImV4
cGVjdGVkOlxuIik7DQo+ICAJCWhkbWlfaW5mb2ZyYW1lX2xvZyhLRVJOX0RFQlVHLCBkZXZfcHJp
di0+ZHJtLmRldiwgYSk7DQo+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiZm91bmQ6
XG4iKTsgQEAgLTQ4ODIsNw0KPiArNDg4Miw3IEBAIHBpcGVfY29uZmlnX2RwX3ZzY19zZHBfbWlz
bWF0Y2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmRldl9wcml2LA0KPiAgCQkJcmV0dXJu
Ow0KPiANCj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+IC0JCQkgICAgImZhc3Rz
ZXQgbWlzbWF0Y2ggaW4gJXMgZHAgc2RwXG4iLCBuYW1lKTsNCj4gKwkJCSAgICAiZmFzdHNldCBy
ZXF1aXJlbWVudCBub3QgbWV0IGluICVzIGRwIHNkcFxuIiwNCj4gbmFtZSk7DQo+ICAJCWRybV9k
Ymdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiZXhwZWN0ZWQ6XG4iKTsNCj4gIAkJZHJtX2RwX3ZzY19z
ZHBfbG9nKEtFUk5fREVCVUcsIGRldl9wcml2LT5kcm0uZGV2LCBhKTsNCj4gIAkJZHJtX2RiZ19r
bXMoJmRldl9wcml2LT5kcm0sICJmb3VuZDpcbiIpOyBAQCAtNDkyMyw3DQo+ICs0OTIzLDcgQEAg
cGlwZV9jb25maWdfYnVmZmVyX21pc21hdGNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpk
ZXZfcHJpdiwNCj4gIAkJbGVuID0gbWVtY21wX2RpZmZfbGVuKGEsIGIsIGxlbik7DQo+IA0KPiAg
CQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gLQkJCSAgICAiZmFzdHNldCBtaXNtYXRj
aCBpbiAlcyBidWZmZXJcbiIsIG5hbWUpOw0KPiArCQkJICAgICJmYXN0c2V0IHJlcXVpcmVtZW50
IG5vdCBtZXQgaW4gJXMgYnVmZmVyXG4iLA0KPiBuYW1lKTsNCj4gIAkJcHJpbnRfaGV4X2R1bXAo
S0VSTl9ERUJVRywgImV4cGVjdGVkOiAiLA0KPiBEVU1QX1BSRUZJWF9OT05FLA0KPiAgCQkJICAg
ICAgIDE2LCAwLCBhLCBsZW4sIGZhbHNlKTsNCj4gIAkJcHJpbnRfaGV4X2R1bXAoS0VSTl9ERUJV
RywgImZvdW5kOiAiLA0KPiBEVU1QX1BSRUZJWF9OT05FLCBAQCAtNDk1NCw3ICs0OTU0LDcgQEAg
cGlwZV9jb25maWdfbWlzbWF0Y2goYm9vbA0KPiBmYXN0c2V0LCBjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YywNCj4gDQo+ICAJaWYgKGZhc3RzZXQpDQo+ICAJCWRybV9kYmdfa21zKCZpOTE1
LT5kcm0sDQo+IC0JCQkgICAgIltDUlRDOiVkOiVzXSBmYXN0c2V0IG1pc21hdGNoIGluICVzICVw
VlxuIiwNCj4gKwkJCSAgICAiW0NSVEM6JWQ6JXNdIGZhc3RzZXQgcmVxdWlyZW1lbnQgbm90IG1l
dCBpbiAlcw0KPiAlcFZcbiIsDQo+ICAJCQkgICAgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5i
YXNlLm5hbWUsIG5hbWUsICZ2YWYpOw0KPiAgCWVsc2UNCj4gIAkJZHJtX2VycigmaTkxNS0+ZHJt
LCAiW0NSVEM6JWQ6JXNdIG1pc21hdGNoIGluICVzDQo+ICVwVlxuIiwgQEAgLTU1NDIsOCArNTU0
MiwxMyBAQCBzdGF0aWMgaW50IGludGVsX21vZGVzZXRfY2hlY2tzKHN0cnVjdA0KPiBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlKSAgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19jaGVja19mYXN0c2V0
KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwNCj4gIAkJ
CQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkgIHsNCj4gLQlp
ZiAoIWludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUob2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0
YXRlLCB0cnVlKSkNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9DQo+ICt0b19p
OTE1KG9sZF9jcnRjX3N0YXRlLT51YXBpLmNydGMtPmRldik7DQo+ICsNCj4gKwlpZiAoIWludGVs
X3BpcGVfY29uZmlnX2NvbXBhcmUob2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLCB0cnVl
KSkNCj4gew0KPiArCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiZmFzdHNldCByZXF1aXJlbWVu
dCBub3QgbWV0LA0KPiBmb3JjaW5nIGZ1bGwNCj4gK21vZGVzZXRcbiIpOw0KPiArDQo+ICAJCXJl
dHVybjsNCj4gKwl9DQo+IA0KPiAgCW5ld19jcnRjX3N0YXRlLT51YXBpLm1vZGVfY2hhbmdlZCA9
IGZhbHNlOw0KPiAgCWlmICghaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRl
KSkNCj4gLS0NCj4gMi4zOS4yDQoNCg==
