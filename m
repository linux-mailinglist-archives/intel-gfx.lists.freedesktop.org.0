Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAC9974A0B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 08:00:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5D9510E972;
	Wed, 11 Sep 2024 06:00:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cavWwnIw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9168210E972;
 Wed, 11 Sep 2024 06:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726034453; x=1757570453;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dmxKq1qfo8rJRyx3FhGMq2NG+6fyXLynve/LcHgZkXs=;
 b=cavWwnIw7NG5j6VRJWimhX64S09M2hx5qgbmKOtL4KIfomAKFU8VkpV4
 NG4gHTBpIT/5jxNzsUnbdMwOxxGpxi/iL0DKlNNipQ7N41ioeLXVw+z7x
 6Nu0NndlKO5n9mODhaA2C0K1k6attWg+RK6j+OBjOCfWkkag3ojRUUYJP
 gzifFJ++He2bG29xwJ8QC15hLbIE5N9ktIjsJQmushk1SCKUM4bl27Fvx
 P54uq9iI79ReGDE4yQ1Hzl1lbSptDO7X0BoHJbGHaIPFLy7I8ySMMXxcm
 vR2J9YNJQr24Q2HgUtNueQW9Esk7epu/sDd2jmQLvnpXgdXLIfsebTK8O g==;
X-CSE-ConnectionGUID: kvQMg+PgRdGdou18+bZsgg==
X-CSE-MsgGUID: 00WFmQG1QiGtlh7VIcVCYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24690320"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="24690320"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 23:00:52 -0700
X-CSE-ConnectionGUID: u8I4XbOGQSeSfn+PNuGLZg==
X-CSE-MsgGUID: uLrypxK1SYa0C4qiZReR0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="98079452"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 23:00:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 23:00:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 23:00:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 23:00:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 23:00:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HyAUUM5Mk/D30B/iRTyNw7MuWUjrfh75YOnLvqNHJMorh2H8+iYhJDEgXuP38vJ5u1Hckztb2RxYB6JAT7ziKbUqygWwQAiUW9hXwg6OE3QIjO7Hd40u4ZXmKnhoWWrq6M55ynqGdjGgLGBnVSODWoMl7J7ZANLb2CiOyPZOZmQlJeyMdixD5Fcea2bl8mqjc9u9vEtJ1Lzi5uluR/Z5l9BJjD/z6JMyLkQ4BejIZvGfNJUfd6IYv9OTWRBfR99c1b22i6gdu1hwwHjbiscdScrt4iIylDRKQpVpGog9oHXAE3ilVetgfjYKhrs8937/mRvMxf7lgljMG69VLwY3PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5USX1mBUWL4e2oc0vhmcb8Lpz2YMtJkY1+sNNPvWQC0=;
 b=EI7CXiNjm9pnmswmvMmnctBRkP4ii75KguoPwtcl1Zv09gux2Mk3a2zh+HJ0BJRosYd5m5Yd0p6EsDwAAxIOPE5Xpf0tVMa0e6R4bqgoKV6Xl0K3G3uR1oGfAjnCQDVgj6aSPtxGunxvVCDRFOEbtXcsGEnRqL1yrkKwYys/8K0ib1ErmwKrvmGFcja1XuCbl20Z3KM9a/DvNh+OKsIFAcEjcNRBzOZXZRFO265hqAd+uj8fGag0ZaAHbcp5CP28EjpWZNDw5OKmCHt/Zb0SiWIoMEZZxHQnfarHg58+plLwWmXDdqowCBdRceoaE8ypigrPMwu7wmibSTsdSVLqvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5293.namprd11.prod.outlook.com (2603:10b6:5:390::20)
 by DS0PR11MB7851.namprd11.prod.outlook.com (2603:10b6:8:fb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.28; Wed, 11 Sep
 2024 06:00:47 +0000
Received: from DM4PR11MB5293.namprd11.prod.outlook.com
 ([fe80::e1f5:3b23:9560:2dc2]) by DM4PR11MB5293.namprd11.prod.outlook.com
 ([fe80::e1f5:3b23:9560:2dc2%3]) with mapi id 15.20.7962.016; Wed, 11 Sep 2024
 06:00:47 +0000
From: "Bommu, Krishnaiah" <krishnaiah.bommu@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "Upadhyay, Tejas"
 <tejas.upadhyay@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, =?iso-8859-1?Q?Thomas_Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, "Teres Alexis, Alan Previn"
 <alan.previn.teres.alexis@intel.com>, "Winkler, Tomas"
 <tomas.winkler@intel.com>, "Usyskin, Alexander" <alexander.usyskin@intel.com>
Subject: RE: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI Modules
 for i915/Xe Driver
Thread-Topic: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI Modules
 for i915/Xe Driver
Thread-Index: AQHbAm73lGp4NTx/3UOlFF18ADnlm7JRIFMAgAALD4CAAO4OMA==
Date: Wed, 11 Sep 2024 06:00:47 +0000
Message-ID: <DM4PR11MB529387DB2FBB0A5C1064895C9D9B2@DM4PR11MB5293.namprd11.prod.outlook.com>
References: <20240909040317.17108-1-krishnaiah.bommu@intel.com>
 <ZuBfwqpIX4HAGwb1@intel.com>
 <3zgu3edmrjum2rbhu7tv5xo7xans2uper7qn3lswca3nsc4tdl@gevqfr65js4g>
In-Reply-To: <3zgu3edmrjum2rbhu7tv5xo7xans2uper7qn3lswca3nsc4tdl@gevqfr65js4g>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5293:EE_|DS0PR11MB7851:EE_
x-ms-office365-filtering-correlation-id: 32457f77-55f0-439f-cb85-08dcd2271494
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?rt+beW1d3W9zywIIm4Ssd3SvuGtHeKGule7UNhoU6oc4nS7k36Da2uz6G5?=
 =?iso-8859-1?Q?vD2MxgywaIJQJ7RRwrE6aFcXowdaiape0LmJ4YmI18Ugthal+2FjOzJBrL?=
 =?iso-8859-1?Q?ooNAI6XUnLOeZ0ocfHONeyKkdOut0aEqB6cUlhQJl3CGnPC6sx5Yo9AcpO?=
 =?iso-8859-1?Q?3xdjbvzMBxxSxqjoEkzfaJyzWIgBfeJ54VgXMBvOH5rdq7pycVo9/AXoDq?=
 =?iso-8859-1?Q?C+/doQ2g4DCyx26KgnWruE0jkr8g+dbCpYQlJoKy1bpMCqiY3BscYYVS26?=
 =?iso-8859-1?Q?7D9Gcmdf1MybGzXpFP2hq9qTOy9mRUs3cIcB5XwCcx5XARPVxR8GbFd4an?=
 =?iso-8859-1?Q?xeddJNCOmGK9r+Uxq3GLgmUe0mAZsE8ep4ho9ZxOE0QnuzUfVsMV7Zv/2f?=
 =?iso-8859-1?Q?PmLcNI6ewv4p2+3XuKGDgEoQEeJG0Kvc+OrmfRLhxecylUKGlaDWKLZ8Aq?=
 =?iso-8859-1?Q?NRiQkSpA9UGYfHKp3WcTwG+yNO+/08u+e6+KOlfRGarJu1O3XO65OWwotU?=
 =?iso-8859-1?Q?5KJqjfeLL2VGtet+LTQ6skQ63Jrn+fGuwx0/vbaaT2Vk0vgduB2kvd90wP?=
 =?iso-8859-1?Q?ap7TiEQW2nOGgaKRYk8j9RwxSKEV1pRVaqgWR4gjUKkPxXsT1pRuLhquFD?=
 =?iso-8859-1?Q?ShS1TrH0XZQPXMUr2kQf/oxSbPnDR2WUC/HhUTgpa6fsefCFT+z+Lf1ksw?=
 =?iso-8859-1?Q?Eo6zqEKYUTJ5tUXa2qeDPrj80vxibdUhh24m1cONWg6sQjZ+oDkQgwT8ZW?=
 =?iso-8859-1?Q?zgHQDKcnshZ1ii8uy/r8JEXLrjOjWPp+jbEcRdBCECuwUA+9uiQqzUNhvn?=
 =?iso-8859-1?Q?H98G+dCbEVID3oWDBWNY9h1xEd7ZwVKDCaZF9m2kv73CvVg35KdLX6vUGm?=
 =?iso-8859-1?Q?pp7ZA8CyATyZCErRr/4ltPw55mhZ6QpC8K3V+VsfXKT2Ie47VUkNrbbcNA?=
 =?iso-8859-1?Q?wieQ1VQYChZPm3hrDPw50ssSM9NYRFwkZFB7lr1qWrfcekXJEb5Id+6W06?=
 =?iso-8859-1?Q?m3Tvtu4Sm+asKfEAdWGWpfHmkwEy3eRYJvDR4aehAE3xmurcd4vO89/Y6a?=
 =?iso-8859-1?Q?5U6v34/SvgYEo0pmXmvCvp47e731TcIb0er9QcB2jLVbW4q4f3xDHz4Des?=
 =?iso-8859-1?Q?wFiXkkULxBsCXjDgbiAn601PwHfSLRfQSM+dMTQyS6howUNB71bh5EnkqV?=
 =?iso-8859-1?Q?qeZKfV6RODe8Jyw+HbBqV5LvPI7elJqOwS2GnAeOS5VuXXTUq/Yz/B5qDj?=
 =?iso-8859-1?Q?7xCnQU8DS1mXGAmBoLOfRDCAtuVgEMajCI+i/zkra/mzTbFg6i3tWCoD3z?=
 =?iso-8859-1?Q?PF5mK5p6lS4ix31ViA6fjCoOKH+/Rw2fXT376YsV9Eb2iNqKzg8ZgBoIp7?=
 =?iso-8859-1?Q?qxYBQeF2XVTTLEBRfKDRsZ8MZMuDwmfqPavxKFIKPH9nSQkcjeNY03fGZA?=
 =?iso-8859-1?Q?2gBHlNjnRVueErXbJUuA5tIzXYs2oVsXbGfipg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5293.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?lhXL9oW+PmzzKqt1d0AR+7g5jj9kv+8KJcUC3KjsXZR/yr3jwBt7nvpakZ?=
 =?iso-8859-1?Q?25QplVbtRfmhokXjI5VMgWyH9AV1rNk8thI0e3sVdGt0g1H6Bz5O14fkXX?=
 =?iso-8859-1?Q?iJ8ib986N6ZQ2u7iwYDnV583KiWntJcjKVlkrng0Ow4xXHVQbVg4MxRBmN?=
 =?iso-8859-1?Q?lptqOCyMdjN13EhK9xAScZEWds+8afIAqZ9CrAgGL8emwa1PT7w7VKwDHg?=
 =?iso-8859-1?Q?/Z9H9N3zthHNo8aT8KoYYDARRRkf4h0QqaGZg9l1PRfDBboqO2WPXSW3XT?=
 =?iso-8859-1?Q?kskWuDvkXmg1axT4yDGWyGPoNRlIezoJSbq7txcraQ51MDWigZ/ovN+PY8?=
 =?iso-8859-1?Q?OZf/Yci61bvTVlrr3b1DRNznzjMHUVCBzNjQwHu4H1R8spXDH4LLywL944?=
 =?iso-8859-1?Q?nti0RHW4Il/w/rU0Yzyv7mOtFb/oftamvPdgY4rRu98qxdwx+OJHQpOgET?=
 =?iso-8859-1?Q?gi8oFlxvtO0yjbMo4flPJouOI0AKD5l3BVwO9lJ8i5feFngNMGqxfF5m6E?=
 =?iso-8859-1?Q?upNm19pFYH7r9w9OruCgWg4AKSb7CD+kRW2/NyEy6XXGouBJEY7jrHwEot?=
 =?iso-8859-1?Q?4qU7mkryh5sVngeduxyGv9WlLcJBQ95w0ticsXfLxB3u2aKPcVlcTjtKcZ?=
 =?iso-8859-1?Q?fu7k4VzPYDtCntJEBmQ9sT1VGpF+zn5kNeWI5dSq5SC5/5l6UZsMvFwwZr?=
 =?iso-8859-1?Q?9g0wJlIrP37bEMG4Bl/UNqjqXIED6hmMzAyasP/h+1BiO8/V1qNSHVWdcR?=
 =?iso-8859-1?Q?6iNljU0/aGB2WcJ5C9uhutbF82dLqmF7Vztffy5bun6roy9ntUO5XRzx/k?=
 =?iso-8859-1?Q?Gpma5I4WfCjP76fcuvnB0BBtVjcySbOnaIP25aS3D4gCt0+vAug16Uy5ML?=
 =?iso-8859-1?Q?nZT/UYb4I2rcLcyi+Dq7IpuVHH+o8VPiAUnOh0+utcJmUgJ0xBcOZ2z/xU?=
 =?iso-8859-1?Q?8yIyS5r/duTU8y+prCmTwttl5nv/TXhO+AQnD6tZwKlXGWvB8Ug+Nlr4Of?=
 =?iso-8859-1?Q?BNTW6gHbons9m/fK5oAI05EeutIytWW+4nv2euZblGHgUQPQzCj7zn+CwG?=
 =?iso-8859-1?Q?sR4V5y7RzQ8H4UNwI8VRlQLBVSLZjNV8EAyX1Q+aOZ5JaltH5sB/QwKhJG?=
 =?iso-8859-1?Q?8gr8xKdyEPdxY/yBu3DKhzrChCphwvmv2LnLBd3gQ89npfNY4TIrkPJDko?=
 =?iso-8859-1?Q?mb7fa3Q5iLShfvCPkeelHivARMSLrDAZlrKGc4Wll6GRZDMGStFA3lJBHF?=
 =?iso-8859-1?Q?9BEBPW6Yg2gIGPqLuEtVHl8Cpfgd79dweKoP+XiwK1rzqXlXfk8lU1IGP5?=
 =?iso-8859-1?Q?l74ssGIthJVze32nxo19V1PR1uvXAXERRWlvc8bSprpHTZOuMiP6nm61km?=
 =?iso-8859-1?Q?9vlb9JAg9gBlgO7hTs/anFdzD/sgYboVEI18en0sfVxV5+bB+vmeEqXzzW?=
 =?iso-8859-1?Q?rXxOhbgX3/T08ueYZ7CQaOnM5z38yCmfaKqljckhshb0kZq/kCdICUhRDk?=
 =?iso-8859-1?Q?XIJ0U/RjD9GNNPk6FUBDWzNKNvqKnxIgZ0gr7cFTI9xGfV1I3I+yGg8T9K?=
 =?iso-8859-1?Q?b3T8mavtNvI+I9+kzFe32lTcegFq//Iv1Oaz0lmRhWku4R0+XDu8qxLZLt?=
 =?iso-8859-1?Q?tdA/AzdHTzcxkKy1KmMwTOUFbJSWbfyK04QxtOr8/KegGQRMNYI/S2Xg?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5293.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32457f77-55f0-439f-cb85-08dcd2271494
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 06:00:47.0266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J5pONobQMdpWak/2kjCfUpZeCTNB7HYlwVVS9UY4hQol1uu2z7qrfo8gJPOVZbvEN0LmlOWAK4ifXcCVKAW/07+YHYMtBEKY+xlGh89mNyk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7851
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



> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Tuesday, September 10, 2024 9:13 PM
> To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Cc: Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kamil Konieczn=
y
> <kamil.konieczny@linux.intel.com>; Ceraolo Spurio, Daniele
> <daniele.ceraolospurio@intel.com>; Upadhyay, Tejas
> <tejas.upadhyay@intel.com>; Tvrtko Ursulin <tursulin@ursulin.net>; Joonas
> Lahtinen <joonas.lahtinen@linux.intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Thomas Hellstr=F6m
> <thomas.hellstrom@linux.intel.com>; Teres Alexis, Alan Previn
> <alan.previn.teres.alexis@intel.com>; Winkler, Tomas
> <tomas.winkler@intel.com>; Usyskin, Alexander
> <alexander.usyskin@intel.com>
> Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI
> Modules for i915/Xe Driver
>=20
> On Tue, Sep 10, 2024 at 11:03:30AM GMT, Rodrigo Vivi wrote:
> >On Mon, Sep 09, 2024 at 09:33:17AM +0530, Bommu Krishnaiah wrote:
> >> This update addresses the unload/reload sequence of MEI modules in
> >> relation to the i915/Xe graphics driver. On platforms where the MEI
> >> hardware is integrated with the graphics device (e.g., DG2/BMG), the
> >> i915/xe driver is depend on the MEI modules. Conversely, on newer
> >> platforms like MTL and LNL, where the MEI hardware is separate, this
> dependency does not exist.
> >>
> >> The changes introduced ensure that MEI modules are unloaded and
> >> reloaded in the correct order based on platform-specific
> >> dependencies. This is achieved by adding a MODULE_SOFTDEP directive to
> the i915 and Xe module code.
>=20
>=20
> can you explain what causes the modules to be loaded today? Also, is this=
 to fix
> anything related to *loading* order or just unload?
>=20
> >>
> >> These changes enhance the robustness of MEI module handling across
> >> different hardware platforms, ensuring that the i915/Xe driver can be
> >> cleanly unloaded and reloaded without issues.
> >>
> >> v2: updated commit message
> >>
> >> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> >> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> >> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >> Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/i915_module.c | 2 ++
> >>  drivers/gpu/drm/xe/xe_module.c     | 2 ++
> >>  2 files changed, 4 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_module.c
> >> b/drivers/gpu/drm/i915/i915_module.c
> >> index 65acd7bf75d0..2ad079ad35db 100644
> >> --- a/drivers/gpu/drm/i915/i915_module.c
> >> +++ b/drivers/gpu/drm/i915/i915_module.c
> >> @@ -75,6 +75,8 @@ static const struct {  };  static int
> >> init_progress;
> >>
> >> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
> >> +
> >>  static int __init i915_init(void)
> >>  {
> >>  	int err, i;
> >> diff --git a/drivers/gpu/drm/xe/xe_module.c
> >> b/drivers/gpu/drm/xe/xe_module.c index bfc3deebdaa2..5633ea1841b7
> >> 100644
> >> --- a/drivers/gpu/drm/xe/xe_module.c
> >> +++ b/drivers/gpu/drm/xe/xe_module.c
> >> @@ -127,6 +127,8 @@ static void xe_call_exit_func(unsigned int i)
> >>  	init_funcs[i].exit();
> >>  }
> >>
> >> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
> >
> >I'm honestly not very comfortable with this.
> >
> >1. This is not true for every device supported by these modules.
> >2. This is not true for every (and the most basic) functionality of thes=
e drivers.
> >
> >Shouldn't this be done in the the mei side?
>=20
> I don't think it's possible to do from the mei side. Would mei depend on =
both xe
> and i915 (and thus cause both to be loaded regardless of the platform?). =
For a
> runtime dependency like this that depends on the platform, I think the be=
st way
> would be a weakdep + either a request_module() or something else that cau=
ses
> the module to load (is that what comp_* is doing today?)
>=20
> >
> >Couldn't at probe we identify the need of them and if needed we return
> >-EPROBE to attempt a retry after the mei drivers were probed?
>=20
> I'm not sure this is fixing anything for probe. I think we already wait o=
n the other
> component to be ready without blocking the rest of the driver functionali=
ty.
>=20
> A weakdep wouldn't cause the module to be loaded where it's not needed, b=
ut
> need some clarification if this is trying to fix anything load-related or=
 just unload.

This change is fixing unload.
During xe load I am seeing mei_gsc modules was loaded, but not unloaded dur=
ing the unload xe

root@DUT6127BMGFRD:/home/gta# lsmod | grep xe ------>>>just after system re=
boot=20
root@DUT6127BMGFRD:/home/gta#
root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
mei_hdcp               28672  0
mei_pxp                16384  0
mei_me                 49152  2
mei                   167936  5 mei_hdcp,mei_pxp,mei_me
root@DUT6127BMGFRD:/home/gta# lsmod | grep xe
root@DUT6127BMGFRD:/home/gta#
root@DUT6127BMGFRD:/home/gta# modprobe xe
root@DUT6127BMGFRD:/home/gta#
root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
mei_gsc_proxy          16384  0
mei_gsc                12288  1
mei_hdcp               28672  0
mei_pxp                16384  0
mei_me                 49152  3 mei_gsc
mei                   167936  8 mei_gsc_proxy,mei_gsc,mei_hdcp,mei_pxp,mei_=
me
root@DUT6127BMGFRD:/home/gta#
root@DUT6127BMGFRD:/home/gta#
root@DUT6127BMGFRD:/home/gta#
root@DUT6127BMGFRD:/home/gta# init 3
root@DUT6127BMGFRD:/home/gta# echo -n auto > /sys/bus/pci/devices/0000\:03\=
:00.0/power/control
root@DUT6127BMGFRD:/home/gta# echo -n "0000:03:00.0" > /sys/bus/pci/drivers=
/xe/unbind
root@DUT6127BMGFRD:/home/gta# modprobe -r xe
root@DUT6127BMGFRD:/home/gta#
root@DUT6127BMGFRD:/home/gta# lsmod | grep xe
root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
mei_gsc_proxy          16384  0
mei_gsc                12288  0
mei_hdcp               28672  0
mei_pxp                16384  0
mei_me                 49152  3 mei_gsc
mei                   167936  7 mei_gsc_proxy,mei_gsc,mei_hdcp,mei_pxp,mei_=
me
root@DUT6127BMGFRD:/home/gta#

Regards,
Krishna.

>=20
> Lucas De Marchi
>=20
> >
> >Cc: Alexander Usyskin <alexander.usyskin@intel.com>
> >Cc: Tomas Winkler <tomas.winkler@intel.com>
> >Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> >Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> >Cc: Jani Nikula <jani.nikula@intel.com>
> >Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> >Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> >
> >> +
> >>  static int __init xe_init(void)
> >>  {
> >>  	int err, i;
> >> --
> >> 2.25.1
> >>
