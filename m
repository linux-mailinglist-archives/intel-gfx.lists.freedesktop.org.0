Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F5C803C7C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 19:11:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C552110E3BE;
	Mon,  4 Dec 2023 18:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D6010E3D3
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701713497; x=1733249497;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=1WnAywROJDGUlSfyfUMVxQXgJxmb46ew/OGs1rzu/uM=;
 b=nTeiLD/5bnwZF8Gr7oUynGne38E84p54oKcz+Vjk7whln22OIGYgCg0s
 4PxG32Kn7OozZRO/rUXZh+dedxqGep1iyoourecN+9mltW+k3bKdJ84gF
 XYneIeUqntzZR7CrDPdLcf+Wn9uS5BdJGFXfgmRraL7nlNr0dsoMamsLF
 kNiv9qWdC02aIG+YwVlfcoC8uEXmNBFKuc4bSB7PAXzXaK9SnBouAimAW
 Ru1e+iiXkqkoGPGVH+Px1Bd41xdPWKsbQbdhmpv4KCEjp+2ef7ciPIpKF
 g4oXZiAjuSnuNWF+47uwkP8SbvhTaQTIv9EuJ42QZzCZzKbV+VRCA4DdY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="7067048"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; 
   d="scan'208";a="7067048"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 10:11:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="888597402"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="888597402"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 10:11:26 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 10:11:26 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 4 Dec 2023 10:11:26 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 4 Dec 2023 10:11:26 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 10:11:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l+C1J8/Wv76jaeuP2E7zXulJ/TZB8CuUroG51MUeLGcJQ9RrLCW8H+r9E42+5RuwSklngK1PLGZYHaUTbOsRcbBbRXzRzCOsaPVVEBFVWDt7y8d7+qErYOf3hY2F7SJwbY+9ItxzUSYvyDI4i/E4+GsrW7KgP5dS9oBgIClImuXVreefoAZ1PW+uG0hs76NKn7uVuyYkDsavRab/Vzwn2Yo4gF+sYkpFPssF0KGdOjL6PEqLG5Tx//6kMP9mAlHd5v1Xx09Pix/4va4oZzpDs/JASSQW1Qacm4e5YJ9S/QTW2WcGN5YPuCnkdiolh9+vbA8tTlZu2TFK5jPdLhw3SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6DSp00SospGnnZGN8nTPwqRRhMXWdBVyLkJFLJ0VDg0=;
 b=GNLwwj0PNM04Nu50TnYjiWcPJN6/f4VJ0gL1pAXPi3F7gSiJyS2wcsMxlIaPQr5cpwpkBNtJSmxjXdyPyGmjZ05V2zKm95R7IrrS74ObTIsezETBLaywKIUkxmuCtsDAOV4NSxGKZXhC+bIFuWt1einVBVfji1rFLmImGcWgCkfUYH3+47L+Gn6hWmSJnHk2ev2HEUwYnBVy6R40UBS+bviT9uV91OpVdIliLaCQpbFC1MaS3z+NfbGli5QSm1GzZ+0AneVIf3YJU8oMeXIfwEA7wQeupMNd4raCVbqoe5MrLj0rYMPu+eF1jqJcWegmM6ppEcaKYcDjN2TSC7azlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5359.namprd11.prod.outlook.com (2603:10b6:5:396::21)
 by MW3PR11MB4731.namprd11.prod.outlook.com (2603:10b6:303:2f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 18:11:22 +0000
Received: from DM4PR11MB5359.namprd11.prod.outlook.com
 ([fe80::d3fa:b9a3:7150:2d6e]) by DM4PR11MB5359.namprd11.prod.outlook.com
 ([fe80::d3fa:b9a3:7150:2d6e%3]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 18:11:22 +0000
From: "Berg, Johannes" <johannes.berg@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Thread-Topic: Regression on linux-next (next-20231130)
Thread-Index: AQHaJtXA9DQre41uVkaEi0pZ7cXRU7CZazYA
Date: Mon, 4 Dec 2023 18:11:22 +0000
Message-ID: <DM4PR11MB5359C076D594C66671150952E986A@DM4PR11MB5359.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129508509896AD7D0E03114B9AFA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B0FAD6E18FD3FA56C981B986A@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129B0FAD6E18FD3FA56C981B986A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5359:EE_|MW3PR11MB4731:EE_
x-ms-office365-filtering-correlation-id: 59838479-30ca-4de5-7d84-08dbf4f46c38
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +kkLgXXieXdF7DPgUQh+Um+tr/GKQX/BMwCOgodGvNo8YFSi8gL/qFoz//GpyhNruIDRf6Mxmi3QxeEvaAsm9GEJmPw1DfOSfCriZj9gEcd7DD/LJ0X7NPYZzC7PW002+NTM/7XrZPILVlAiyW2bjiCj+6qpYR4f51I6rPCUfs0DMM89Qyi0ErN7XrvTDQ2vUYzOdAmRRK4GHJdmA9+3rUU+n2iVqOYdbcNBvztGZVJjLgsXVV/Ejnz7gbJZEGYpmX54AtjJEfCxsThyAdhLjuxVyL9xiKxAMA3NzhwYdb5OzFqiB4HTNG2BBsImuywYHbAs2zLCW+RwfMGnPrndRNPNFan+2+BtzIsGMNQbPoG1hJzr9DovdEIeULYE33ejJwnfhCncd+VR5JwH67YCvFhDWCO8zTM7vAr39jiERhj97MRCW/uqH2Cdci61UI/t+Uv8D9y/UXxN7hTMI8mb8OR5LVItHym/LtP/qwLAwGqYJHpRIl/6xC7kfYBVbrNl7yveO6yuuWOndzLB0405XaEekezErc0FBUCV0v10hYJw5DodqUrWTFAgDJxsCxOdn/92LYZ3E2Z7Yn6SgUppja4dmZtiM6dgThH4V8BqdkZcjrYoZlujQbhPJp0yR5Qc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5359.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(346002)(376002)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(5660300002)(52536014)(86362001)(4326008)(6862004)(8676002)(8936002)(2906002)(38070700009)(41300700001)(33656002)(71200400001)(107886003)(9686003)(6506007)(82960400001)(83380400001)(478600001)(26005)(7696005)(38100700002)(55016003)(122000001)(316002)(54906003)(6636002)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YTNta1Q4SEdIcUJ4WENjbURqb0tLUVp6RkxoR09razZJbFpDWFZoSTA2SUFh?=
 =?utf-8?B?ZHZ6bnhpQWV3TmNadUkwVTVlQlZxaWU1c292UDBzMHNTODJwM3pRMUFQWE5J?=
 =?utf-8?B?TFI1b1dLbGcyMVRTbTNKUjg3bktNSlQyQVpOVHFTazZheGNQU0JkSkJUZkxT?=
 =?utf-8?B?QVBEMmxDTGx5TlMvVzYrbUtlaFlBMVVTblFORHFIQzJJVFQ2dlZpblVYMGFK?=
 =?utf-8?B?QVkxM2F3R1JRbDNMTEJ0SXAwckZsUjlDMmcvWGgzUTcyOWVwNUVscjAwSGFT?=
 =?utf-8?B?eE9EMkNCMmYzZzlXSWlmbHZyTUNJaEV3MFlaZzRlUFdFVUtxTGVSQW1LWDVH?=
 =?utf-8?B?R0c0U29LR1hBc3JKSjZLcmM1dUlUTjQ0NW5JUkhReHBLekVTbGJnVys1LzZq?=
 =?utf-8?B?bkRDNXh2QjhhOXhFSnpQdkJReG9yb0RKYmFxVDA3aEtSRC9oVHR0UU05MVIx?=
 =?utf-8?B?SUVtU1hOYkxzYXFPa3dlVVdlVWg4M2NqR05RWkwrWFJBdFB5amNsTEd5bWwv?=
 =?utf-8?B?dFdGdkdQWkZVdHVOR21TMkcraGZJWTkrVHJFWStrSjlKK1IvUWR0OWs0WWN4?=
 =?utf-8?B?UkdlMkV4MVVTdWNsSGRtWXkzSUh5VFgrQXV1MFpDbkNMVVhuTExnSExkUXVQ?=
 =?utf-8?B?aGM1MkNXWG9hVHJwTExVWXBMMEhobFpKc2o2WWhvTnhLL3U0MHRYVnJpWUx6?=
 =?utf-8?B?eXZIek5td2VKN3NEM1RvQkI4QVM5cnVpMHVHR2ZDMzRENy9kWDgyOFhSSkVJ?=
 =?utf-8?B?NlcvNU5nSzJoM3VDbS9JOWNDenMzWDdxWmF4TkJuUEJyQUZWTkRDOVdGQURH?=
 =?utf-8?B?THlTbzArdU5DcUlKK3dnWXR0Q2xCbGJkYis3KzZ2V0dSS0ZpOWRrU3Z3Wmdm?=
 =?utf-8?B?dHNSZDk0Z21mZFJ0VXEvNkFmeTQrMS9iWTFJcjhsYkZJZHlLcmhlNkVkT0dI?=
 =?utf-8?B?dS9qTldOczhLSFNoNkQrQ05vaTRvck9RdDhDM1ZudzVYa0lWbzAxSTExQWtD?=
 =?utf-8?B?SkI5ZWdvejNEU09wdW1FRWNNOExSUkxHd0R1dzN1UXlKeG9LRVY1WFFyS1NU?=
 =?utf-8?B?d2ZXZFNSVmNtYzZtamtGYnQxMmthZDg4RFlTOVFHa1FtNVdBUm5DYXY2THFU?=
 =?utf-8?B?aE0rY1d4WGtEUzBKTTk0NTZHYzVZbmh1dmpFc0M0bm9KQ2h6UjlVNlR0NTdV?=
 =?utf-8?B?Y2JWV1F3Y0dPMmk4ZmxnT2Q4U0N5QzJMRjA4N3VLbDhGMDBWYXpIMDZUR1hm?=
 =?utf-8?B?a0l2Ri8yTE9vaEZzYjlnckJzemNnOWlUcERvN3F1UFhuS0RqWGNjNTA5d3Nh?=
 =?utf-8?B?T3FGODBJL1ZvRHI2TkpiQytvYnUwOFNiSVp2NCtSZmV1L0l1djdGUW5vREFF?=
 =?utf-8?B?ZG80QzhObGdjZENPZ3ZmSU5NcVU1SktTR1FjVlFjREJhV0Y0Y3BMQ01jLzlt?=
 =?utf-8?B?SVZxL2g4QStoWUFkL2tTd1k3OHRqSkNJbnR2aCtjRSthaUVKTnhBdVNPUDBK?=
 =?utf-8?B?VmZ5OVZtbGswdDFBOEwrR1lFbVlLNUJsT3I0aGJEai83eEwvWXprLzZZU04w?=
 =?utf-8?B?KzdrVGgrL25CbXFYL3ZEWlBmTVVUS09FMHRGdG5vYmZ0Z3NXbHhjdmkzQkJ5?=
 =?utf-8?B?eXk5ZHRJVVArTERReTRQbFNlTGszSU5sZzRIdVBqRElGQmN1Q2g5ZVovOWgw?=
 =?utf-8?B?ZGFsQnNuZk5yd0VWZ0hnbHRucWZ6K1NiMU1VaE9ReS9zQUpvOTYwQW1ualBs?=
 =?utf-8?B?ckI2ZTNwZmJVUHZIeXA5STRicFdCQ2NsUHBsWC9zT3JxMjhLd2pid3RxMGdI?=
 =?utf-8?B?SWhHRVYybXIrdis3TUpVVGxmbXhhV0NXTGliNkhCMFlFeGFncE1YQjZEZHJu?=
 =?utf-8?B?aHBRdGxCZEs4eFBKczZQMmJuQmwrMFNsYmJDSmZXeEM2dTk5UHkxZVdEazJK?=
 =?utf-8?B?K3M2N29NSTNxeTYrTnAxcEpka084VE1sVk1HM1I1ZEdDVkVPTXE2b0lDZFlH?=
 =?utf-8?B?bFZkeW1oUlJiVENaMlpPZFNaMjZFNUlGQXNCcVVja3RId09sMkxuZ1YzZDRY?=
 =?utf-8?B?amFPbVZYZmlPWDZmSDgrcm5UcytCbVdZSzYrV0poaWRBZ01ZbHJwOXo0dDdn?=
 =?utf-8?Q?P5a6EhhTHLJMqrXXYaRVolvbz?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5359.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59838479-30ca-4de5-7d84-08dbf4f46c38
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 18:11:22.7447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eabWkoqFjIe6tzl7WiZafoM2saM4+B6+41XU54CwwAnesPDJ0uFsT5JO1unq108fykvjsI3AVWA+MuS79yWhnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4731
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: base64
Subject: Re: [Intel-gfx] Regression on linux-next (next-20231130)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksDQoNCj4gW3NuaXAgbG9ja2RlcCByZXBvcnRdDQoNCj4gY29tbWl0IGY0YWNmY2Q0ZGViMTU4
Yjk2NTk1MjUwY2MzMzI5MDFiMjgyZDE1YjANCj4gQXV0aG9yOiBKb2hhbm5lcyBCZXJnIGpvaGFu
bmVzLmJlcmdAaW50ZWwuY29tDQo+IERhdGU6ICAgRnJpIE5vdiAyNCAxNzoyNToyNSAyMDIzICsw
MTAwDQo+IA0KPiAgICAgZGVidWdmczogYW5ub3RhdGUgZGVidWdmcyBoYW5kbGVycyB2cy4gcmVt
b3ZhbCB3aXRoIGxvY2tkZXANCg0KWWVzLCBvYnZpb3VzbHksIHNpbmNlIGJlZm9yZSB0aGF0IHRo
ZXJlIHdhcyBubyBsb2NrZGVwIGNsYXNzICJkZWJ1Z2ZzOmk5MTVfcGlwZSIg8J+Yig0KDQo+IFdl
IGFsc28gdmVyaWZpZWQgdGhhdCBpZiB3ZSByZXZlcnQgdGhlIHBhdGNoIHRoZSBpc3N1ZSBpcyBu
b3Qgc2Vlbi4NCj4gDQo+IENvdWxkIHlvdSBwbGVhc2UgY2hlY2sgd2h5IHRoZSBwYXRjaCBjYXVz
ZXMgdGhpcyByZWdyZXNzaW9uIGFuZCBwcm92aWRlIGEgZml4DQo+IGlmIG5lY2Vzc2FyeT8NCg0K
Rmlyc3Qgb2ZmLCBJIGFscmVhZHkgc2VudCBhIHJldmVydCwgd2hpY2ggc2hvdWxkIGJlIGluY2x1
ZGVkIGluIHRoZSBuZXh0IC1yYy4gQW55d2F5IHRoaXMgcGF0Y2ggc2hvdWxkbid0IGhhdmUgYmVl
biBpbmNsdWRlZCBpbiB0aGUgLXJjIGN5Y2xlLCBJIGp1c3QgZXJyb25lb3VzbHkgaW5jbHVkZWQg
aXQgd2l0aCBzb21lIGJ1Z2ZpeGVzICh0aGF0IHBhdGNoLXdpc2UgaGFkIGEgZGVwZW5kZW5jeSku
DQoNClNlY29uZGx5LCB3ZSBkaWQgZmluZCBhIGZhbHNlIHBvc2l0aXZlIGluIGFub3RoZXIgY2Fz
ZSwgYW5kIHlvdXJzIHNlZW1zIHRvIGJlIHRoZSBzYW1lIG9yIHNpbWlsYXIsIGR1ZSB0byBzZXFf
ZmlsZSBub3QgZGlmZmVyZW50aWF0aW5nIGJldHdlZW4gdGhlIGZpbGUgaW5zdGFuY2VzLg0KDQpU
aGF0J3MgYSBiaXQgdW5mb3J0dW5hdGUsIGJlY2F1c2Ugd2UgX2RpZF8gaGF2ZSBhY3R1YWwgZGVh
ZGxvY2tzIGluIHdpcmVsZXNzIHdpdGggZGVidWdmc19yZW1vdmUoKSBiZWluZyBjYWxsZWQgb24g
YSBmaWxlIHdoaWxlIGhvbGRpbmcgYSBsb2NrIHRoYXQgdGhlIGZpbGUgYWxzbyBhY3F1aXJlcywg
d2hpY2ggY2FuIGxlYWQgdG8gYSBkZWFkbG9jay4gVW5sZXNzIHdlIGRpZmZlcmVudGlhdGUgc2Vx
X2ZpbGUgaW5zdGFuY2VzIHRob3VnaCwgdGhlcmUgZG9lc24ndCBzZWVtIHRvIGJlIGEgZ29vZCB3
YXkgdG8gYW5ub3RhdGUgdGhhdCBpbiBkZWJ1Z2ZzLCBhcyB0aGlzIHJlcG9ydCBhbmQgb3RoZXJz
IHNob3cuDQoNCmpvaGFubmVzDQotLSANCg0KSW50ZWwgRGV1dHNjaGxhbmQgR21iSApSZWdpc3Rl
cmVkIEFkZHJlc3M6IEFtIENhbXBlb24gMTAsIDg1NTc5IE5ldWJpYmVyZywgR2VybWFueQpUZWw6
ICs0OSA4OSA5OSA4ODUzLTAsIHd3dy5pbnRlbC5kZSA8aHR0cDovL3d3dy5pbnRlbC5kZT4KTWFu
YWdpbmcgRGlyZWN0b3JzOiBDaHJpc3RpbiBFaXNlbnNjaG1pZCwgU2hhcm9uIEhlY2ssIFRpZmZh
bnkgRG9vbiBTaWx2YSAgCkNoYWlycGVyc29uIG9mIHRoZSBTdXBlcnZpc29yeSBCb2FyZDogTmlj
b2xlIExhdQpSZWdpc3RlcmVkIE9mZmljZTogTXVuaWNoCkNvbW1lcmNpYWwgUmVnaXN0ZXI6IEFt
dHNnZXJpY2h0IE11ZW5jaGVuIEhSQiAxODY5MjgK

