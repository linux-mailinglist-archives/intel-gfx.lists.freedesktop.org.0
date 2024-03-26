Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ED488D2C6
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 00:20:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 896FC10F4D2;
	Tue, 26 Mar 2024 23:20:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I3foHA9v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C839B10F4D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 23:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711495239; x=1743031239;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=nlIO5s3k9mwbPW6W+Z/NeiJWcDcgrHOdu2VGZ2UYApc=;
 b=I3foHA9veozSzeFC6g/ejRPO6Ka94ycHnCZuP/B4V7/IH7hutqhocmb+
 U+/tO+LvlAC8zDNJq3kD1LaPewdA1m08Xx/kAcUx6uo1mg7XnKqwd9p/C
 O1zjE3gJWcrIGYS+HKlgD/lPgqQIz/8d3gFdgU+z96IXxcIoIRjDzInx3
 kzAc+BssOC7NXfnAlZAaLXn1uOlwwZALDVvAvYP0WSJuLXVrRXbnw6+/U
 EXvGzN71wiRLDDmTBenjMK23P0vrJRywwzxb9/n2JA6wBHKet8RcT6sY8
 nNWyfAUTZVHHWR1MT49FhDQUUkQHlftLtyigfTJkk8IVbWUHycwSJcR+d A==;
X-CSE-ConnectionGUID: BlIhqsBRSJeau/l4fhdFpw==
X-CSE-MsgGUID: 9AsT54WZQMeghy+nIAl3Ow==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="32014069"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="32014069"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 16:20:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="15955230"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 16:20:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 16:20:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 16:20:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 16:20:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 16:20:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fa0kKsDj3gx+pRZ80ZB713CFsGbmlJwe+hnxSMkQCtW9E+AkrYHlM+8KOfxklBROQZJeInrcj65ZNfYbIobmBlvWHyrlOevmrKet1oDxNvKKMyfMTxEJhiY3HM8bED8e7/8nO4Nx+ROIsotG0n77yHbxMFzMrrmJ4I+z0dH0s+tKkDdR3hhk5kFIIaJfqe8xSBBLTSMDbQ8cLAizb+kTMo73mxvfn2e98pgMk9CTGn8mnk+zIrvO5cTXkLaeCFlf/Beajiuf1Pte7kv7rjGafQxWQbWchrjYGguLGgV9vKW6dxcZtdcg1chCJB4mb611IGIus70vDlgzcTPG51WI7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nlIO5s3k9mwbPW6W+Z/NeiJWcDcgrHOdu2VGZ2UYApc=;
 b=QkLChFXcbqBv2N12Ia8KujCw5ey7dk5BfLql3WqCtbN3R/XeiaQdJIud9d8yoeRfp2Y3WqmPkNbGI1/RmrXTqJ3Y44x8dQUy5mDcKzBQM1PjGKR4hPRsdn/0ASRUNiV5eZcdTxTOkeXTUg8WX6xPf4yFVdY0NVOVbQckdXJS7xNdf+rmRUnYuwT73p/l7KmY1x0CGh6/DBSa9ff0gXVnCpx2GJfRrklUVfLiCEoV3DbBJmTil3oimpt9SJ8UYEHJNcQGpfwKJ++6TsPO5pp7G8iW+ybAt2ztl2oV796nKP8cuib1N/+n4DyeOkJrSZiYP17Q1U/mWDspsSu6ouN5TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CY8PR11MB7799.namprd11.prod.outlook.com (2603:10b6:930:78::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Tue, 26 Mar
 2024 23:20:35 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f:d87:3265:6573]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f:d87:3265:6573%6]) with mapi id 15.20.7409.028; Tue, 26 Mar 2024
 23:20:34 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v9 0/6] QGV/SAGV related fixes
Thread-Topic: [PATCH v9 0/6] QGV/SAGV related fixes
Thread-Index: AQHaf9Lem9v1cIdn7ES+8ZbUVlpmzbFKqL8A
Date: Tue, 26 Mar 2024 23:20:34 +0000
Message-ID: <3ebcc3d647d67382b12aae7c3196dd8060c39841.camel@intel.com>
References: <20240326231021.281780-1-vinod.govindapillai@intel.com>
In-Reply-To: <20240326231021.281780-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CY8PR11MB7799:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LuPksNiJcCjG9SquQ9YCw5mbbprG28BknhBMCLrukcAkOvk92PS2Jw/Woh9eiPhC5xbqeafV9/IVvqg9BFiVcvlBcpSkYsq9/iN1Tq+zSsZedI2eXZNTt6ELznVCVTNfS8wsAH1B5SMQbI+jGk9IuekoTQF0w1+hf5qRzaZr++71MgCZQ2f7mtG9BjFRQp2QGBJzepvmjl2RtgeYNZp4awbLTwPM/aQcXQ0Jx7T3hNkSye2AfczWhQPFhvEhFrIwOiQoT+CFjO/deO3WnAVJtMULKk8KZiOL/7YO4+F60yPaV/3xyg6/AnMQU1gCPXlhsyu873UGokl9cqQXHt/uLEdhASHzcsKH2x7+tsZBsTSTUl+LbzcOB/xRIbZXxX/ldTWIoeQbGlDuDa2qeLoYP/I3f33k8VqTuZ+qtG2TQa4SuvQVu7k57TFfnuypWAcSBl/1BPlPdnm6V/hIcQLvzvXz8SxJ1eyMszKPpJMRArwL/SWXLVl/ncgeUawbLjD06T1ywNTZ4rExnbLkmPYjH5voMNcB6OMC4pErEaHWimwJSqt/lRT3txBHuVfMr8UL4ih6wmj57xZp5SH4JQtps7gZ+BN5Y88CYmDtyUDc7wo5KMFt/lDg0LiBtyVEpkfcdO7wz6lEASOhenAz3vgXMgQfIjhia//mIR7mnULG2Kc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2p5ZmZBWG1yRlF1cEN3MTJZSnlqc3lkY1BRenBzMjBwOHJ1ZFQwSjMxYjVK?=
 =?utf-8?B?MnFDQVZndG5HaHFPRmx6ak5xZFVlSE5IaGg5OThkQndBRTNQVUJrWEtIVlh2?=
 =?utf-8?B?c3B5U1NHRG05T25uNUNVSUdCcUZiMGFXRXNhRXArTWdjVFpwOU9CKzRwY2d6?=
 =?utf-8?B?VXZZQ3c4WjJMeUdaeVo0VTJqQmZxQ3BaeGlWYlIzd0xjRndLRmw5U2dseFhQ?=
 =?utf-8?B?eUdRTXBlQ1l0NXdqWHVXZFZFZlZpNnpKVXNoSDNFK0xtbldQQW5rQ3R2NEFw?=
 =?utf-8?B?SFhZaVU3bzNNKzVoNWFsQzFacEV1dGF4Kzk5bzRpQzl2aXJSWmxrd2FyNjVI?=
 =?utf-8?B?byszUVJaNkdMRWVkQjZ2ajFUaWRxbEhOaFFMYmRGVmRlVnNkc1g2Z0R5dmo2?=
 =?utf-8?B?aTkvSitmMllQWENvRDlPTHlwa1pNQkJrZ3d6d0JHejV6cko5YitlRndxMnQy?=
 =?utf-8?B?MnRWTHRSOW42b2k1YVBrVFBTelRHSWZrREVsYjZkbzNOR290aDI4REFWSG5z?=
 =?utf-8?B?c25SSmR6RDA5Ty9Bc09GUXp2azRidEsyOVI4YW5LdlEyb0NFM3VHeWh2SXBx?=
 =?utf-8?B?OU9pWFFEOWNHeks1eks3MU9aRlE4S3pSM2tVVWpWUUo3QXAzc0JNVG5Uckkw?=
 =?utf-8?B?Y2xMaDVGditNbk5yWUtVc0VGRGk4TnhVc1BORlJxTHZHTlo4SEtvNnZDb2Zp?=
 =?utf-8?B?SDhtQnRlREpFMGI1ZjgzMWNnZ0loSmdBYSs0Y1RtdzVsRFRrcDAvWFlhdXEx?=
 =?utf-8?B?S0dJenFJTkVLUFBPUFNBK05XdFlLcnk3a0tzdlIwbjVXbFFDRDhuQURFWFFC?=
 =?utf-8?B?eCtkRG5JNG9KWnJyUE54ZXJoMFhQbkJYcWpXMkVSaDFvWG1jRTBsUmxvRUNt?=
 =?utf-8?B?K1JRWEhqTG90ckw2OTZmTXVsaEVwR01Qb1Q5TStsaEVtVFBqOFFBUVNSamdF?=
 =?utf-8?B?Z0pNWkZwb3dZcTVLbFU2MnFNL25kYnBHK1dsWEtKUHFmWlJYZUNrK1I3eng2?=
 =?utf-8?B?SkN1TWFueDhId21CUTd2Mmp1WmZPN2VNTFBwdmFzRzkxRU1HUWFiMmRhZ0Vz?=
 =?utf-8?B?ZXRVeXlJbHIxQkw0NjVNekxUVjNhMENjY0Z3emZmVXRXd3djU2UvdThMcHhG?=
 =?utf-8?B?SWxnR0FZQS9yOFNpWk1TcHJEcVkzZE5RRWxsKzNWMEVVenByYlhNcEpibzNH?=
 =?utf-8?B?REw5aVpEMHNWOE5OMFZBcUNzOHUyS01QSmpVSjdyN3Y5MUF3dWtRdG93YnpB?=
 =?utf-8?B?d2oxL1FMY2VSVWZCYmxMT1VKdEJucFRlMnJJZzYrbGVZcGxWSFdxeEExNlQx?=
 =?utf-8?B?Z0FmSkNHL0tENkY3S1hJaHhSL0J0N3loVlVoUFFPUGsrMzUzUVRjRGtmeThI?=
 =?utf-8?B?WEVGZUNDNndVd2hmNjExS215aVhRbUpiSWplL0RNeHpIUDFDaG80eGJsNDd0?=
 =?utf-8?B?d1JocWZUYWpOVWVYa1RwZmRTVHNBdGRYNjVUaTM0ajdIUnRRTlhuNlVjaWJX?=
 =?utf-8?B?WVRDYUhvS3ZCWndOWmtnbUxVZExJMDllWUZTblVZNEh6MXhLdEFKU3FlOTJR?=
 =?utf-8?B?MEgxN202bjFBTElFQlRRSlFBZ0F4UTlEUlBhYlB0aGMycUR2WWM0SUdudElB?=
 =?utf-8?B?ZDk2Q3ZjZk0rM1BZWTlabWFEZWZ2VjVkM1ViSU5xNzB6MFVFT1Q2QkJncU5M?=
 =?utf-8?B?Q3VCc05qcS9DZEJhMmRlUFMxQkVlSHJqNU5jK2xSUDVnZVZCZ0x2NDhVcDNW?=
 =?utf-8?B?WUhDc2hFTlNaTGVYRU9yblhJUHdMK0E1R3ZmeGk3eXFpY3BHdHJBdXhZVUhY?=
 =?utf-8?B?SDlDWG5nbWk2aHhSbW9Zek9CRVk2Y0tjNXcrWnZTd2lHQTdUcGxHOVhkc2ZG?=
 =?utf-8?B?ZHlQbWVBbG5XenV0ZklZVjIxeFQvVXZ6N25xblZENGtNNUtFS1VQUStZMSto?=
 =?utf-8?B?b3Y5SllQYzVxN3FBbGgrMC85SXZUQXhibjExNCs3aG9EUU5xaHp0SGxqeEZo?=
 =?utf-8?B?alNqbE0wZEJEUjNsTUxQUkt0UHIrOG1uRzRDZDJSYUUrMXlhbHZTTnZ5bmpI?=
 =?utf-8?B?WllMQ3R0b0RBcDdZdkxPbVJWSzdOUU9oOFozbUtneWwwMWhhK3dPTVFBeDFZ?=
 =?utf-8?B?a2ZSaHQvOVJ2S3AzQjd5YUNZWXptbGx6N05CNFdwREdzOE5CWDExQWgyM0FG?=
 =?utf-8?Q?wZRofKc2dTgaEYb8/ZR01jA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <91D6E4C93AB7004FAFAF804FE5BA9BE8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dbead12-09d9-4c84-4b38-08dc4deb56d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2024 23:20:34.8691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MKU9k+ki4st2hnKhUbVT49OfbTPrpt+ZlMryPFwhF0G+pixunEhcYscByrNLmlb6eZmGyx2a3S9yuV+IA2nuASbHg7o9j3mtdap1yEzOIjI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7799
X-OriginatorOrg: intel.com
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

SGkgVmlsbGUsDQoNClJlZ2FyZGluZyB0aGUgcGF0Y2ggNS82IGluIHRoaXMgc2VyaWVzLCBJIGhh
dmUgYXNrZWQgdGhlIHBjb2RlIHRlYW0gZm9yIGNsYXJpZmljYXRpb25zIG9uIGhvdyB0bw0KaGFu
ZGxlIGNhc2VzIHdpdGggZHVwbGljYXRlIFFHViBwb2ludHMuDQoNClBsZWFzZSBub3RlIHRoYXQg
SSBhZGRlZCBhIG5ldyBwYXRjaCB0byBmb3JjZSB0aGUgUUdWIGNoZWNrIGFmdGVyIEhXIHN0YXRl
IHJlYWRvdXQgKHBhdGNoIDYvNikNCndpdGhvdXQgdGhhdCB3ZSB3b24ndCBiZSB1cGRhdGluZyB0
aGUgUUdWIHVubGVzcyB0aGVyZSBhcmUgc29tZSBjaGFuZ2VzIGluIGRhdGEgcmF0ZSBldGMuIEkg
YWRkZWQgaXQNCnVzaW5nIGEgbmV3IGZsYWcgaW4gYndfc3RhdGUuIFBsZWFzZSBsZXQgbWUga25v
dyBpZiB0aGVyZSBpcyBhbnkgYmV0dGVyIHdheSB0byBoYW5kbGUgdGhpcy4gDQoNCkluaXRpYWxs
eSBJIHdhcyB0aGlua2luZyBvZiByZWZhY3RvcmluZyBhIGJpdCB0byBleHRyYWN0IHFndiBwb2lu
dHMgbWFzayBmcm9tIG5ld19id19zdGF0ZSBhbGwgdGhlDQp0aW1lIGluIHRoZSBpbnRlbF9id19h
dG9taWNfY2hlY2soKSBhbmQgY29tcGFyZSBpdCB3aXRoIG9sZF9id19zdGF0ZSdzIHFndiBwb2lu
dHMgbWFzay4gQnV0IGFzIHN1Y2gNCmEgY2FzZSBoYXBwZW4gb25seSBhZnRlciB0aGUgaHcgc3Rh
dGUgcmVhZG91dCwgdGhvdWdodCBjYWxjdWxhdGluZyBxZ3Zwb2ludHMgbWFzayBldmVyeSB0aW1l
IG1pZ2h0DQpub3QgYmUgZWZmaWNpZW50IQ0KDQpCUg0KVmlub2QNCg0KT24gV2VkLCAyMDI0LTAz
LTI3IGF0IDAxOjEwICswMjAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdyb3RlOg0KPiBXZSBoYXZl
IGNvdXBsZSBvZiBjdXN0b21lciBpc3N1ZXMsIHJlbGF0ZWQgdG8gU0FHVi9RR1YgcG9pbnQNCj4g
Y2FsY3VsYXRpb24uIFRob3NlIHBhdGNoZXMgY29udGFpbiBmaXhlcyBwbHVzIHNvbWUgYWRkaXRp
b25hbA0KPiBkZWJ1Z3MgZm9yIHRob3NlIGlzc3Vlcy4NCj4gDQo+IFN0YW5pc2xhdiBMaXNvdnNr
aXkgKDQpOg0KPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgbWVhbmluZ2Z1bCB0cmFjZXMgZm9y
IFFHViBwb2ludCBpbmZvIGVycm9yDQo+IMKgwqDCoCBoYW5kbGluZw0KPiDCoCBkcm0vaTkxNS9k
aXNwbGF5OiBFeHRyYWN0IGNvZGUgcmVxdWlyZWQgdG8gY2FsY3VsYXRlIG1heCBxZ3YvcHNmIGd2
DQo+IMKgwqDCoCBwb2ludA0KPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBEaXNhYmxlIFNBR1Ygb24g
YncgaW5pdCwgdG8gZm9yY2UgUUdWIHBvaW50DQo+IMKgwqDCoCByZWNhbGN1bGF0aW9uDQo+IMKg
IGRybS9pOTE1L2Rpc3BsYXk6IGhhbmRsZSBzeXN0ZW1zIHdpdGggZHVwbGljYXRlIHFndi9wc2Yg
Z3YgcG9pbnRzDQo+IA0KPiBWaW5vZCBHb3ZpbmRhcGlsbGFpICgyKToNCj4gwqAgZHJtL2k5MTUv
ZGlzcGxheTogZXh0cmFjdCBjb2RlIHRvIHByZXBhcmUgcWd2IHBvaW50cyBtYXNrDQo+IMKgIGRy
bS9pOTE1L2Rpc3BsYXk6IGZvcmNlIHFndiBjaGVjayBhZnRlciB0aGUgaHcgc3RhdGUgcmVhZG91
dA0KPiANCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmPCoMKgwqDC
oMKgIHwgMTYyICsrKysrKysrKysrKysrLS0tLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2J3LmjCoMKgwqDCoMKgIHzCoMKgIDYgKw0KPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHzCoMKgIDIgKy0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuaCB8wqDCoCAxICsNCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZHJhbS5jwqDCoMKgwqDCoMKgwqAgfMKgwqAgMiArDQo+
IMKgNSBmaWxlcyBjaGFuZ2VkLCAxMzEgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pDQo+
IA0KDQo=
