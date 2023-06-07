Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 587D772691D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 20:45:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D401A10E1E0;
	Wed,  7 Jun 2023 18:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B33710E1E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 18:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686163499; x=1717699499;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=OyJP0Q9T0DuhaJu4UHvTf3rtG3yTdLZURX+l9Jqdpgk=;
 b=abLohBWRIQGXeVXWyMIHdWlKDdy/hEgEOq6TQmWwRwMj5bUZX1NBTjPy
 ktpDksDkvmaMYXh0asm/NWf47pWet7kE3uiLTBLhKMUmCPh9VyFzNtfJ1
 99DvgPC11VemgAOJdetROmSWKJeqRxcWJw9AOvn2+RFZhIZtxSq3id3US
 CnuCYHuVdhpTNmsPhVhSLi9Fnh6ERbj4kgbi0Jq+n1TCtjS3cIsJmF5To
 S6R5iMf74Ne+mcbYt6c4m9IZpcwUdokw3nYEjZ+NZkxFDFZ1gT0MtCtnq
 bafUdI3kZbBx0f0JfagMo/2CNHKBddip+IupSfEnmFAFWMd48U28MW5Sz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="357087596"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="357087596"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 11:44:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="1039794704"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="1039794704"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 07 Jun 2023 11:44:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 11:44:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 11:44:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 11:44:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 11:44:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fQf/jy9jCeocOqgdXELqJWbf5VVlMQIA2tv8KRZ0537ijarD8RT36EYSIjHNNtIyt1ptwqMU56cGJEu+FATLXSv2uhVkVsx/NLvSWLDPkaoQxdDTKJbArzMPD7CzanS6TohR0wzl3gQQu94zsZ1X9l2IcHk9jBvFHhZZ4ahc0iSYAndyMLwHYlPvH6XH9wBdwKVBsMiaapFEVyol0CfFRoYaZgiypm9i0OnvwuPeTSblIE/ivdfVUzpz2qeUkpH6+tdrWgDA8vuqPCwDhXWFe9lTvIeF5XGymK5zyC0AAw9zIAj3B/PP5Fvpsb/V3dl8Hm5uVizMvO/ghSqw+0Rxxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OyJP0Q9T0DuhaJu4UHvTf3rtG3yTdLZURX+l9Jqdpgk=;
 b=eqIq4CxKMRZzG754fVN/tp5Zms8ZFubqqbwqk5N2TczYmzOloosa59CyrOwid70+DSdDM8BbzZ69M2mfp/dbZM9kZ6Mu4CRmPhWOpnZg6q2g4MJFwx11LPQRFdjzd7Je9g9f6ivmmQ59JKtFd67ufinR4F9ITuxYBERKGW+udgfvCsE2UGNzUeQk7W/h0f4DVDpR0h/EPLbqbhgoYMuObYGFkN0K7unudIiYYMGr7yf6YtoekUdmRIPjx6u7e2XPaj6ZcVM7qaNOyRnUMvU4qfxIdqAylGH9hycg17a1stz+Un9qpAYsN7tLdyWMqG8wh5s3JPgSsxC4tA13hKcVSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CY8PR11MB7395.namprd11.prod.outlook.com (2603:10b6:930:86::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Wed, 7 Jun 2023 18:44:54 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::749a:b0c8:4930:5a2]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::749a:b0c8:4930:5a2%6]) with mapi id 15.20.6477.016; Wed, 7 Jun 2023
 18:44:54 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>
Thread-Topic: [PATCH] drm/i915/gsc: Fix error code in
 intel_gsc_uc_heci_cmd_submit_nonpriv()
Thread-Index: AQHZmFAJBhtJ4PFcek6IoppIV21Ue69+EtYAgAAG+QCAAZXcgA==
Date: Wed, 7 Jun 2023 18:44:54 +0000
Message-ID: <9fae9daf7b2c745db1b8c359a822e4da88ce71c1.camel@intel.com>
References: <ZH7sr+Vs4zOQoouU@moroto>
 <15829bd2d58a7439d416e2e36c5c4a17281b9fc2.camel@intel.com>
 <a0088658-d7d0-4047-9b5e-ea8e1987afc0@kadam.mountain>
In-Reply-To: <a0088658-d7d0-4047-9b5e-ea8e1987afc0@kadam.mountain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CY8PR11MB7395:EE_
x-ms-office365-filtering-correlation-id: c35c636f-9fb5-4ab4-971e-08db67874916
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LhIZmr+XMLYd926xzc5GTh8wRro3aBgC9VlTq71d2Z2JEKwhSKRev9yp6QChqS/WL98dTV0H71NHsr4asxop94Mo2eJQmg7XK++7dDV30YJUqMcXcojPvuOrt5SXIxtoLR9ZaFY3pBXM+mzhVoHS+Lbjkynl4qaleNJ6KkDD8+U24xpnRwylIsguqnPiwqnJ/FvsqN0oWLp1nxmxVFUiYmdqIFnUgaDAu1RWVSJcFvmUxLWBn/un2v4KuYG47b2VNosLJtNCV04z5gX0NYccMh/s8uQ3L20MPopW1u9Jn6oDxxsqcypji4M897WJi0bAWWlUvqvDaMvG0cVFrPZ0mRUoIPTVRaA9PZthxV85UGIGE8XZ1XkiR+cgrfOGHwxIRh+PphNW3lVMQPIWMLH3x4v0rlUbjsCFsPpakn+h5oM8EQ50H0Qnt8knwsJ1+ydQ3TjehwRsRX+FD0t/rGImftUKvlcxYRIN34X4WjyYJke1VQHflu175jdSHnrQ5TZSUxKMITBTjwnnpU95Zw00umNM/KZ9wlzU6VVD0tvs6BkVUjxWU2XcZqZQ6MqbWARKc15MiXVxEJI+cYexR0NTzeusS/JfIWclw102dQwswj22nYDMNDHuxLRRjdlpbyDQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(346002)(396003)(376002)(366004)(451199021)(54906003)(71200400001)(478600001)(6916009)(8936002)(66556008)(8676002)(2906002)(36756003)(5660300002)(38070700005)(86362001)(4744005)(4326008)(64756008)(122000001)(66446008)(66476007)(91956017)(66946007)(76116006)(316002)(82960400001)(38100700002)(6506007)(2616005)(41300700001)(6512007)(26005)(186003)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Yi9IWWE5aU9RdndrQnQybkVFQS9IbE9SRHNaTHdFSjhTdHJ3dytVZ054dzNj?=
 =?utf-8?B?WlY1N2E2VnIyL2pqQ3VmWk5nMjRHNlgvTkFwZFlRdVJrS3hOWHpvNzBHYjRz?=
 =?utf-8?B?emtFR0VOS3MwbGt5Y21MREhMYzd1bENwZDhxbkJiaG5VbHhKNWlnNTkvUERv?=
 =?utf-8?B?aHU0VUtuYmtiN0g2SHpSSEpUOXJCb3Z6djRic2ZEOFpheEZoRkY4aCtYR0ds?=
 =?utf-8?B?QmRJd1dMZEZGNW5lWGhxdE9Td25wR011YzRMeTZYQnZGamZOUVZ3cllkR2Za?=
 =?utf-8?B?VTVUTEgvTWhyZDFNWGw0WUVyTHF6TThoLzZGTVh6MkdTTzZLNFg0cEFoRmIy?=
 =?utf-8?B?SDVCNWc5K0FlOVA5RUUrdDRhUEVuOUdaR05wZ2txUmZzMU5YejdrOEZzWWwx?=
 =?utf-8?B?N3N4UVZwUVVyNHhvWk5aMEZva3JsYUF3a0V5WGxaMUZDNy8reDdacWxnMW9W?=
 =?utf-8?B?ZTAraldMb0ZoaUdFRlpLMjArKytUUTgvdkRVTElzTEdmNHN3a1F3YnlyYVds?=
 =?utf-8?B?VVlweGhKV3ZTaC8yMGpMc2sybVFWdTlSS1dWUWx1dUhLYzJqY3dubTZWQlho?=
 =?utf-8?B?UWlPdzBhdEsxeFdFMWpvdzVkd0tuMHVxV3gxRXQ0QTNXUkZiclJjcGJxdWF1?=
 =?utf-8?B?S3F5U1BBQ0tsZVIvb3JUQ0tYWmNtZ0Jhb2IrY2hnVG1DVFhlcEFnRTc5WmFF?=
 =?utf-8?B?UjVXcjFzc2ZvK2JXZWQzb0loOW9ya21XaythT3VUNmw3RDI2bWRsRkhYbkhp?=
 =?utf-8?B?em5OUVR0aHlyRWlIalRSNE9kYmo5U0hwRXhUTllSMVI4Wk9IcEplMlk0TDBW?=
 =?utf-8?B?a1UrMmZseitFMFZreCttWER6MzI5R1FabGF2Q3RiL1pEMGV5RyszTXdCTy9s?=
 =?utf-8?B?YWdJSmxoK0R2VVN4OEc0c3FkNlI3K3FLTFIwWExLMmc5eU5rclhmd1BZZHd3?=
 =?utf-8?B?eCtiZ2dnS0xhdDA5a0JuSnR1a0xuY3JYa1hmMy81Qzl4aGFnZ2ppNnpYdmpD?=
 =?utf-8?B?blB1cUZMQTZEYmJVKzFrL1dYYVRFU21SKy9aZkh0TzhzVUtxZytCVnFIT3BX?=
 =?utf-8?B?cXNzcFhLVm1TNUlJK0F4S1VMMlpLczhLWTZMYWZ6ejlwMkxrT0MyNGRVOU1o?=
 =?utf-8?B?RDJZQjRzaFRGUzVoMEljSmpZOEZ5WG9IMmhManpYOERvbDkyYkYzT1VtdFNm?=
 =?utf-8?B?Nnc5UXQxYVI0K0lTSG1lUjF4bEZjS1MxSnNXTmVZWlIvek4wUVVNcmNLdlZz?=
 =?utf-8?B?U0JoUENHV1lEUENjSDd3T1I1Nk9Za2FxbXdjc3BRem5ES1JTTnVyUitSb2sz?=
 =?utf-8?B?MG9mQmgybXlJR2RmNWVzNzRJL2JVNWRsN2F3T2ZwcFZGaFE2STBTSE5SV1VH?=
 =?utf-8?B?SzVDTEF3OU0wei9uV1gvcFQ4Rk1paFhOejRPVzhZRWpQSjc1YTZzNHhzbHdx?=
 =?utf-8?B?UCtLbzZlWUx4b1BEcEFxSUpwaXJVV1pkQXNHVVFVaUVDVmwyVzFqTm5rWmxG?=
 =?utf-8?B?RHAyb1lHY0FkeUxaWXk5WlRrdStpNExRd2wwa09rTHhEcjNHelQzNG1wS25E?=
 =?utf-8?B?OW12eTFPY08rZGpHQzBTODdORkthNTZ5cEFjOWxjZFo4R3hRVE5NQTZJN3JI?=
 =?utf-8?B?QktadmJycUxBK2xES0tUSHV5RmpzQjcvdUF3K2g1WkNUeWVpQUhCMHZMSElx?=
 =?utf-8?B?RDdCMEN1cXJET1FnYTArNW1Pdk9SSXoxQ1FjMjhLdEFtT2czQTJuZ0F4VGVi?=
 =?utf-8?B?VGFqTVhMWXNVQjM5YVZBUEd4cEluTndSbVpSQVQ2emVBV203eGtpL1lJVkFF?=
 =?utf-8?B?NlFJQVlWaXJkUnpEVXJybUdqVm9UWk9SazJyMkZMQkdYSW9mTmZ6aWZiLzN2?=
 =?utf-8?B?V0FITFc1Tlc0NHN1R28rU1ZDekpQRVpqZTlRTVFFdDJKekMyRFR0LytjRVlE?=
 =?utf-8?B?YUdyTXFsT29nYi9IbFBQenI5OUllM2pNWkJoT3J2ditFVkZwbDk5VmZ6R2lh?=
 =?utf-8?B?M2xsQkF3OUNDa09GNEY0dXVHQ2JQMy9Tb2YwbGhDblIxUyt6UkxXcVk2Q255?=
 =?utf-8?B?TEJBdUsvZVhmb1YrNlU0UjBFdGt4UWVlYzNhaWpBQ0o2bzY1R1YxS2c2NGlP?=
 =?utf-8?B?cmFMbFhkbVloZzFGdEZ0Y0NBeTIrK0ZmK0hEb3IvdnQ3dHBDNmtrSCtOUm5y?=
 =?utf-8?Q?gOXCxNVF3tQARYZ4Lj0zLgo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <294AC5DA228A44499DB33DB21D83725F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c35c636f-9fb5-4ab4-971e-08db67874916
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 18:44:54.7089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v4E6hPB2rkdG39AEqL/IAQir1I4MAT/EGApsCFad+dTpmqllvYyVU4mBXIKYS1fFYhsTbXPrBP4+b4kprgIpzC0I5fLX4UQl1MIIGC/ujcBvEH/IgkEYoMjPiueUN+Je
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7395
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Fix error code in
 intel_gsc_uc_heci_cmd_submit_nonpriv()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "airlied@gmail.com" <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTA2LTA2IGF0IDIxOjMyICswMzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOg0K
PiBPbiBUdWUsIEp1biAwNiwgMjAyMyBhdCAwNjowNzoxOVBNICswMDAwLCBUZXJlcyBBbGV4aXMs
IEFsYW4gUHJldmluIHdyb3RlOg0KPiA+IFRoYXQgd2FzIG15IGJhZCwgaSBjb3VsZCBoYXZlIHN3
b3JkIGknZCBmaXhlZCB0aGF0IGJlZm9yZSB0aGUgZmluYWwgcmV2LiBUaGFua3MgZm9yIGZpeGlu
ZyB0aGlzLg0KPiA+IG5pdDogYmVsb3cgZnVuY3Rpb24gYXBwbGllcyB0byBNVEwgb25seSB3aGlj
aCBhdCB0aGUgbW9tZW50IGlzIHN0aWxsIGZvcmNlLXByb2JlZCwgc28gbm90IHN1cmUgaWYgdGhl
IGZpeGVzIHRhZyBpcyBzaWduaWZpY2FudC4NCj4gPiANCj4gDQo+IFRoZSBGaXhlcyB0YWcgaXMg
Y29ycmVjdC4gIEl0J3MgZGVmaW5pdGVseSBhIGJ1ZyBmaXguDQo+IA0KPiAoSSBpbnZlbnRlZCB0
aGUgRml4ZXMgdGFnIHNvIHRlY2huaWNhbGx5IHRoYXQgbWFrZXMgbWUgdGhlIHdvcmxkcyAjMQ0K
PiBleHBlcnQgb24gRml4ZXMgdGFncykuDQo+IA0KU28gc29ycnkgbXkgYmFkLg0K
