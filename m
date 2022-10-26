Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B549160EA9D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 22:56:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7C410E2F3;
	Wed, 26 Oct 2022 20:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20F2310E2F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 20:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666817808; x=1698353808;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=dUtvFJxL1AqBsHacITCpQ0Tbztu8C7nsWWsuh+6f8nU=;
 b=eeE6AS/s5DlcoIXoY91Fcafn6G9Q0lT69E6LsWTovV65XV/NG+OiNWEu
 ZWDgyHe0+fEhyB2Iul/1jMA5IoXrAMn65qYN5kIG9G8B4UDgUkUov9tj2
 1T+zDx+9+noiifpmpCTVejXy8zrRs59Q6yhLONprynaC118fgckPz0ZbZ
 dQrpjsurGf+kdl00DwN5INfrDZFyFe1tuMKqhyQPtkrHf2pX/oLO/vyNm
 ScupdDS0gYrxzy2+EPAiHrdhT4DF7eaGUsuflnjrtgi7A1aLEPEV5HL4U
 I7R+vZV/SbngMgvSxw6jLNZ297aM169x7hWLVDh5qTmCDdGs5f0DbEMmy g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="372268783"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; 
 d="scan'208,217";a="372268783"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 13:56:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="737403379"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; 
 d="scan'208,217";a="737403379"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 26 Oct 2022 13:56:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 13:56:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 26 Oct 2022 13:56:46 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 26 Oct 2022 13:56:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wk1lRa5qUFiDT+M0gHyRQ8ILhwkXQHXBZ3NKeU0hNSU47IpZ06jZ780PjAAOQYCifPRHk6tIPh4RwKs0uiwvFc68aW65cCYS1Tito+IBxQfwVEwpA7XBOUVgOVJAONDUt5AogO5e2CACMu7XFXQrwxX37qk71Ya3y2+WFUOcqfqSHsN1glt/CS6jTS/loBt8M2rTseEdLzisS43O02dG+27nPdo0C8oEU6V9nFSw0Hn7RS254kcr5LQ/9g/esMXs+UbRY7BNZ9RdVZXLdvRlCS9tHpqvagm41ruTZ1uRH2fTuGz3pvok+WiuVpDctIH/Qi8Z4N+MJPRyMsSVezPgWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dUtvFJxL1AqBsHacITCpQ0Tbztu8C7nsWWsuh+6f8nU=;
 b=AfGGHk3Nof/9tJx7rHt+2XwCE5CxmGwBqY64tsAeNcJyJHcVCBFyb3ZONLuOJrdGLAgZf/yiB/gszmUlKC7I/0qp25YYyt+yvbvHTaXpPV5gbzQXkAI0zWorepP7VQWsjI2otB7A1MJ+V1DPrsqsdnBDgpQB2b42qPepp0yOqSltis/mTNU30PmNkNyqF4KqKOwmKHZwyBPeoZDkCPBsRKjByloBY6P70xQbIJGbGqoppn7jkFNT+3wag/0AADt5LJGVgo/wa2TVgihjvE/pR5Mh1GzflF6PmSIUPkxPVkhsljort3fOPwknDxK0lS09ZwMz/TRNdm92Ej+s3ndLXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM4PR11MB6288.namprd11.prod.outlook.com (2603:10b6:8:a5::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.23; Wed, 26 Oct 2022 20:56:43 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%7]) with mapi id 15.20.5746.028; Wed, 26 Oct 2022
 20:56:43 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggWzEvMV0gZHJtL2k5MTUvcHhwOiBTZXBhcmF0ZSBQWFAgRlcgaW50ZXJm?=
 =?utf-8?Q?ace_structures_for_both_v42_and_43?=
Thread-Index: AQHY6AfbhWLgvxWnokKKISsJAX5Cwa4hK3eA
Date: Wed, 26 Oct 2022 20:56:43 +0000
Message-ID: <0401915cabdfc12a2d27fa3c8d4730c51059dc03.camel@intel.com>
References: <20221024184031.613550-1-alan.previn.teres.alexis@intel.com>
 <166665731405.15482.12991155255759957077@emeril.freedesktop.org>
In-Reply-To: <166665731405.15482.12991155255759957077@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DM4PR11MB6288:EE_
x-ms-office365-filtering-correlation-id: a8b44b7c-6242-4dd9-41c2-08dab79496bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SWdAHmh2FgSvSxaxjxtxcX1Pn9klV33+QtO/MSvaQ/+N+1RavtfswDtzyd7HIxBp8dyyhLjSoNCDzAvlLGhmHk2qltVNo6NDMKH05YOtS9XTOHdcXzkjnIEh0gbaLtw0e1tJpdhRX5KfGuT9cNb4zvVmW+yla21w36MoLfEb3N4km6t11Qs9yEj8XBkw1yo16zOoS4k38ykYbRwil1aC4t1pMaT5wIhkOMg4hlX/aPRHu8EwJ2XhydiVoveDYKW1PhG0vvesG3j2jB1afQsukyTtGPm7Yyq83Krb9NlbyH+EBNZmVs0DvH2bQkJH+HN1AzQJ0+Ioy3I/DMHKNDx6oDr3CSqu0sOa1wDt7sPuQtpTMnKh01jR5I8RI/uBoLXFtHffdO1lHeiLIGkFLXGLVCcFXwRIXtU6r0M2ZoWI32aajo6SodJAbfjhzIOK5mx4/2GsAV1dibW3cCwI9h+hK54AYpRWlvGX+cIj4HrEdQ1erRZXA4urNMj+EiJiwjXEoBFzRAxGGiMI+HzMnBEIkElxcLF9frzevTBkwB68wq3+HlJkuH+dS14mzXPQJKyGoue9N0qmK0nbq1ko8sPdYE30zhabtlH0EOjPB/VMTeKGH6/j+ncPbXhXbjA3lDV5zCoF2VvJ3OQ2w3AvQv2yXJTObgma2bNtc3aFnpMPFv2DRQF6trAwxL7I0t5uAr8KibN/Efy7gE+Ya0kQsUSZgg805Kz+KipDETNN07odzI47T9G+JQIY98nTT4lmfLAKk+QYuQev7LLn07j3dw6VwXbir5rpthlwe5V8a7rZDtppggjna0t+SvgYpq4koLXeyrWV281yWYD1uZTozr8/hg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(39860400002)(346002)(376002)(396003)(451199015)(2906002)(38100700002)(166002)(4001150100001)(21615005)(122000001)(5660300002)(6916009)(8936002)(66946007)(76116006)(316002)(36756003)(41300700001)(83380400001)(2616005)(38070700005)(186003)(478600001)(91956017)(6512007)(40265005)(6506007)(64756008)(71200400001)(26005)(66476007)(6486002)(86362001)(82960400001)(66446008)(966005)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHdoN3I2cUpXUUprN2ZOSHlXZ2RiWkZudktEOFVXYTVWdG1QVUVnUk4yUThk?=
 =?utf-8?B?Q282c3NGRWlGamhLdWZMRTdSaFpjSGVDUk9pbVloSk1kME1zMER3N0k3YjEx?=
 =?utf-8?B?bHpidnBrRTR5Q1ZCbmVwaCsraFVZcG9zNDJVTVhlL21oR0RkNnFkZENZU0Jq?=
 =?utf-8?B?aU9wanVCR0VMR3FvVlVWZWZzaFlabzZRL2ViMThpSnBVVy8xY24vL0pnNVNu?=
 =?utf-8?B?SmgxekRrR3E4RmJ3MlRNbjExN2VBdnhGTC9iMmx3VURJVy9yQTZ0elV2L3VR?=
 =?utf-8?B?bW9JU3RPQTZHY3UrUTRKWVZjeTdERXlpMUU5SDhSUUN0YnBkWUVrVFBUTUNh?=
 =?utf-8?B?Wmt4ODZRMnIxdnBXa09KOHcyZldQMFBycmlRVW5Fc29jTld3cElHRHRxOTNH?=
 =?utf-8?B?VnJSREdJaEhxeDRTTi8yTkJORUhBMGl0enZ1SnNiMGQwV1JXSkRlZHlaT2tF?=
 =?utf-8?B?V0FhOEpFSjRmaGJNNUYwRjF3MVZvS3Qza2liWUU4czd0ZVZvaldqelh3cHhH?=
 =?utf-8?B?OGFESkJNRUJ5U2tpczRRWlRuZUhwTmkxdU5nWlEyS0ZrbFpqMkl4RDZPbDRm?=
 =?utf-8?B?M3BiNU9RMXR2R1dPMTFvbmRYSmtmVHVUMFM5SDVsWmg2RXVibTlENUVzWTJq?=
 =?utf-8?B?WjZZWjVKbytLS1NXK0NuOEtrRDUrbjlJRVp1NmNoN2ZFMllCTkZNZmsrbkFD?=
 =?utf-8?B?TC8vd3ZncGRuRkRkUk11Tm1jUmNnamR3bFcwQnc3NmZYblFlRnV5MzJXeEYr?=
 =?utf-8?B?dWhlUWozaVNiTFkvZDRmQTZ4dHMzbEtFc1N6Tml1c1N5YVFDdmVPQWIvQW4v?=
 =?utf-8?B?c3hnZ2w0ZFY3Vnlhc0lKL2NvUlhQMHdKNU1NMDE0bUZsRXF6Y2Y5QzJYVEho?=
 =?utf-8?B?WlBZRFRWbDN2T2RvdjZpS2lKSm1adXgvMVQvS0thZ1lnYjVDTWIzeTV6SjBY?=
 =?utf-8?B?MXV1Qm55RVRzVGxpMTdlOWpoZlRkTWNKNnJMR242TmZhUm91bE9TcVp4RFFN?=
 =?utf-8?B?LzF2aWpKenpseFltVWNiWUp5anJiSTR5VnJ0WVNwT1lOOWdtelhiVzdSRHk0?=
 =?utf-8?B?UUIxY2NLVkE0UTJVYW1LUEh2OEhtak9Rbmsxc2treXpHMmorN3g4RlhucW5n?=
 =?utf-8?B?TTFiUW9Ycmk5T0VvSVFodlI3R2RyQ290VWMySjNsN2VPMVg2TnkzekZ4NGx2?=
 =?utf-8?B?MW5PUXZ5RzhLbS96anI4OFJEZURIUzN2azdSejFWZGtzM3Vqa25hTjdvbVQw?=
 =?utf-8?B?dTIydlh0QkVvM2d3Y2Y5Q2FKbDFlNndwbFIvTk5XYm54QVk3R0h3WFphS2dz?=
 =?utf-8?B?ZDFVazVTYmE5SXRCL2VjaUNJWFR0bEdMNmN2R2gwUVkwS0l6S0VCRDJMOG1n?=
 =?utf-8?B?cjJqMHYzbGlLYmRxdjBrRyt4MHk2aFVDZi9LZW1RZXZvL3VURGp1NVh0R3FN?=
 =?utf-8?B?TW1KN0hEY2M0SzJXN0pTMTZ2SW1UNnFWQmVtSHVzTXdmZm82MUVOQU5nR1Zk?=
 =?utf-8?B?ZlNRZysweEwrUGdyNWR6ai9JcXJTeTM4Nm5NdmJjRmpDRC9nYVh5dUxRRVM3?=
 =?utf-8?B?bXhJdTFvQmJqVkc4M0RKZllWdnJqVXJnVEdwNXpRd0RaeFVCVmNwR2xtc3Rj?=
 =?utf-8?B?aU5mQVlEZk94YmVQbjNiK1kxMXVrSzhVUmc5MVNpMlYrbzFkT21XRXZsUjhO?=
 =?utf-8?B?cWYyaUZyUzRHZDM0Q2ZtUTIwWmtBclBud2tuMEMyVFh5Zm0zT1VIeTRQU3VX?=
 =?utf-8?B?K1VjNVdOcHh5dWhyS2dnY1ZFbXdObC9NcFJ3Z09JR3JoMm9uRTlJUXlPcjFO?=
 =?utf-8?B?QzZrdFF6TURlS3pkblhTSnA4Nm95MWMyeU5nRmpxOWduRGNJb3d5OHFyem1J?=
 =?utf-8?B?M21oSGJJWlhJK251am5GWTRXZFo0RzFHaHZyRzVGZmNsZy9RWEwwRVRVREY4?=
 =?utf-8?B?VzRTakxBTkVTcjRpeENuZTRoaUZzOFVVMkgwS2JRQ0dOa0Q5RlhMUWszNGYw?=
 =?utf-8?B?OUJoMlZPV0RTaGEvb3c0MExBVk5kb0xndDdqcEpyQTY3ZW5IV2RCNUZ5UTBz?=
 =?utf-8?B?alBlNXBQUlQ5WlZrTlBENjZ3dW9Fc2NSYVlIckhXNUdXY001YlJEbEgxN3V4?=
 =?utf-8?B?QUl2cGsxYzh1UG9kcFJFVzZjUmpJdHR5T0c2NXgyWWV3R2xzcFo5QnRXbXhF?=
 =?utf-8?Q?VVsYSVvAXGt8hES6gDyDdn8=3D?=
Content-Type: multipart/alternative;
 boundary="_000_0401915cabdfc12a2d27fa3c8d4730c51059dc03camelintelcom_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8b44b7c-6242-4dd9-41c2-08dab79496bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2022 20:56:43.7881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0qCK+BhMbXBe6JlrszoPQInHFtW5M33zR3LdY75DDrdAf0lyPaCWIVMysp8tnyIlP5IlfyC0M3X/3z+2PLZQkdbTM3L3+nLrUq3yXL3YN4kiZ2izefT8K9ZHwIPLyBTY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6288
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/1=5D_drm/i915/pxp=3A_Separate_PXP_FW_int?=
 =?utf-8?q?erface_structures_for_both_v42_and_43?=
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

--_000_0401915cabdfc12a2d27fa3c8d4730c51059dc03camelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGlzc3VlcyByZXBvcnRlZCBiZWxvdyBhcmUgdW5yZWxhdGVkIHRvIHRoZSBwYXRjaCBiZWNh
dXNlOg0KMS4gU0tMIGFuZCBJQ0wgZG8gbm90IGV2ZW4gc3VwcG9ydCBQWFAgYW5kIG5vbmUgb2Yg
dGhlIGNvZGUgcGF0aCBvZiB0aGlzIHNlcmllcyB3aWxsIGdldCBleGVjdXRlZC4NCjIuIFJLTCBz
dXBwb3J0cyBQWFAgYnV0IHRoZSBjb2RlIHBhdGhzIG9ubHkgZ2V0IGV4ZWN1dGVkIHdoZW4gUFhQ
IGlzIGVuYWJsZWQgYnkgdGhlIGNvbXBvbmVudCBiaW5kaW5nIGFuZCBhY3RpdmF0ZWQgKHZpYSBJ
R1QgUFhQKSB3aGVyZWFzIHRoZSBmYWlsdXJlIHdhcyBvbiAiW0lHVF0gaTkxNV9zZWxmdGVzdDog
c3RhcnRpbmcgZHluYW1pYyBzdWJ0ZXN0IGh1Z2VwYWdlcyIgYW5kIG5vIFBYUCBjb2RlIHBhdGhz
IGV4ZWN1dGVkLg0KDQpUaHVzIHRoZXNlIGZhaWx1cmVzIGFyZSB1bnJlbGF0ZWQuDQoNCg0KT24g
VHVlLCAyMDIyLTEwLTI1IGF0IDAwOjIxICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQpQYXRjaCBE
ZXRhaWxzDQpTZXJpZXM6IHNlcmllcyBzdGFydGluZyB3aXRoIFsxLzFdIGRybS9pOTE1L3B4cDog
U2VwYXJhdGUgUFhQIEZXIGludGVyZmFjZSBzdHJ1Y3R1cmVzIGZvciBib3RoIHY0MiBhbmQgNDMN
ClVSTDogICAgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMTAwODQv
DQpTdGF0ZTogIGZhaWx1cmUNCkRldGFpbHM6ICAgICAgICBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTAwODR2MS9pbmRleC5odG1sDQpDSSBCdWcg
TG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xMjI4OCAtPiBQYXRjaHdvcmtfMTEwMDg0djENClN1
bW1hcnkNCg0KRkFJTFVSRQ0KDQpTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQ
YXRjaHdvcmtfMTEwMDg0djEgYWJzb2x1dGVseSBuZWVkIHRvIGJlDQp2ZXJpZmllZCBtYW51YWxs
eS4NCg0KSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBk
byB3aXRoIHRoZSBjaGFuZ2VzDQppbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMTAwODR2MSwgcGxl
YXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0NCnRvIGRvY3VtZW50IHRoaXMg
bmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJ
Lg0KDQpFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzExMDA4NHYxL2luZGV4Lmh0bWwNCg0KUGFydGljaXBhdGluZyBob3N0cyAo
NDEgLT4gNDEpDQoNCkFkZGl0aW9uYWwgKDEpOiBiYXQtYXRzbS0xDQpNaXNzaW5nICgxKTogZmkt
Y3RnLXA4NjAwDQoNClBvc3NpYmxlIG5ldyBpc3N1ZXMNCg0KSGVyZSBhcmUgdGhlIHVua25vd24g
Y2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTEwMDg0
djE6DQoNCklHVCBjaGFuZ2VzDQpQb3NzaWJsZSByZWdyZXNzaW9ucw0KDQogICogICBpZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlQGh1Z2VwYWdlczoNCg0KICAgICAqICAgZmktcmtsLWd1YzogUEFTUzxo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMjI4OC9maS1y
a2wtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaHVnZXBhZ2VzLmh0bWw+IC0+IERNRVNHLUZB
SUw8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTEw
MDg0djEvZmktcmtsLWd1Yy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGh1Z2VwYWdlcy5odG1sPg0K
DQogICAgICogICBmaS1za2wtZ3VjOiBQQVNTPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzEyMjg4L2ZpLXNrbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZUBodWdlcGFnZXMuaHRtbD4gLT4gRE1FU0ctRkFJTDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTAwODR2MS9maS1za2wtZ3VjL2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVAaHVnZXBhZ2VzLmh0bWw+DQoNCiAgICAgKiAgIGZpLWljbC11MjogUEFTUzxo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMjI4OC9maS1p
Y2wtdTIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBodWdlcGFnZXMuaHRtbD4gLT4gRE1FU0ctRkFJ
TDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTAw
ODR2MS9maS1pY2wtdTIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBodWdlcGFnZXMuaHRtbD4NCg0K
U3VwcHJlc3NlZA0KDQpUaGUgZm9sbG93aW5nIHJlc3VsdHMgY29tZSBmcm9tIHVudHJ1c3RlZCBt
YWNoaW5lcywgdGVzdHMsIG9yIHN0YXR1c2VzLg0KVGhleSBkbyBub3QgYWZmZWN0IHRoZSBvdmVy
YWxsIHJlc3VsdC4NCg0KICAqICAgaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBodWdlcGFnZXM6DQog
ICAgICogICB7ZmktdGdsLWRzaX06IE5PVFJVTiAtPiBETUVTRy1GQUlMPGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExMDA4NHYxL2ZpLXRnbC1kc2kv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBodWdlcGFnZXMuaHRtbD4NCg0KS25vd24gaXNzdWVzDQoN
CkhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xMTAwODR2MSB0aGF0IGNv
bWUgZnJvbSBrbm93biBpc3N1ZXM6DQoNCkkNCg==

--_000_0401915cabdfc12a2d27fa3c8d4730c51059dc03camelintelcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <B319E57ED44EB649826F1CBB84B6CF86@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjx0aXRsZT5Qcm9qZWN0IExpc3QgLSBQYXRjaHdv
cms8L3RpdGxlPg0KPHN0eWxlIGlkPSJjc3MtdGFibGUtc2VsZWN0IiB0eXBlPSJ0ZXh0L2NzcyI+
DQogICB0ZCB7IHBhZGRpbmc6IDJwdDsgfQ0KICA8L3N0eWxlPg0KPC9oZWFkPg0KPGJvZHk+DQo8
ZGl2PlRoZSBpc3N1ZXMgcmVwb3J0ZWQgYmVsb3cgYXJlIHVucmVsYXRlZCB0byB0aGUgcGF0Y2gg
YmVjYXVzZTo8L2Rpdj4NCjxkaXY+MS4gU0tMIGFuZCBJQ0wgZG8gbm90IGV2ZW4gc3VwcG9ydCBQ
WFAgYW5kIG5vbmUgb2YgdGhlIGNvZGUgcGF0aCBvZiB0aGlzIHNlcmllcyB3aWxsIGdldCBleGVj
dXRlZC48L2Rpdj4NCjxkaXY+Mi4gUktMIHN1cHBvcnRzIFBYUCBidXQgdGhlIGNvZGUgcGF0aHMg
b25seSBnZXQgZXhlY3V0ZWQgd2hlbiBQWFAgaXMgZW5hYmxlZCBieSB0aGUgY29tcG9uZW50IGJp
bmRpbmcgYW5kIGFjdGl2YXRlZCAodmlhIElHVCBQWFApIHdoZXJlYXMgdGhlIGZhaWx1cmUgd2Fz
IG9uICZxdW90O1tJR1RdIGk5MTVfc2VsZnRlc3Q6IHN0YXJ0aW5nIGR5bmFtaWMgc3VidGVzdCBo
dWdlcGFnZXMmcXVvdDsgYW5kIG5vIFBYUCBjb2RlIHBhdGhzIGV4ZWN1dGVkLjwvZGl2Pg0KPGRp
dj48YnI+DQo8L2Rpdj4NCjxkaXY+VGh1cyB0aGVzZSBmYWlsdXJlcyBhcmUgdW5yZWxhdGVkLjwv
ZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+PHNwYW4+PC9zcGFuPjwvZGl2Pg0KPGRpdj48
YnI+DQo8L2Rpdj4NCjxkaXY+T24gVHVlLCAyMDIyLTEwLTI1IGF0IDAwOjIxICswMDAwLCBQYXRj
aHdvcmsgd3JvdGU6PC9kaXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2lu
OjAgMCAwIC44ZXg7IGJvcmRlci1sZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3BhZGRpbmctbGVmdDox
ZXgiPg0KPGRpdj48Yj5QYXRjaCBEZXRhaWxzPC9iPjwvZGl2Pg0KPGRpdj4NCjx0YWJsZT4NCjx0
Ym9keT4NCjx0cj4NCjx0ZD48Yj5TZXJpZXM6PC9iPjwvdGQ+DQo8dGQ+c2VyaWVzIHN0YXJ0aW5n
IHdpdGggWzEvMV0gZHJtL2k5MTUvcHhwOiBTZXBhcmF0ZSBQWFAgRlcgaW50ZXJmYWNlIHN0cnVj
dHVyZXMgZm9yIGJvdGggdjQyIGFuZCA0MzwvdGQ+DQo8L3RyPg0KPHRyPg0KPHRkPjxiPlVSTDo8
L2I+PC90ZD4NCjx0ZD48YSBocmVmPSJodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzExMDA4NC8iPmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
MTEwMDg0LzwvYT48L3RkPg0KPC90cj4NCjx0cj4NCjx0ZD48Yj5TdGF0ZTo8L2I+PC90ZD4NCjx0
ZD5mYWlsdXJlPC90ZD4NCjwvdHI+DQo8dHI+DQo8dGQ+PGI+RGV0YWlsczo8L2I+PC90ZD4NCjx0
ZD48YSBocmVmPSJodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMTAwODR2MS9pbmRleC5odG1sIj5odHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMTAwODR2MS9pbmRleC5odG1sPC9hPjwvdGQ+DQo8L3RyPg0K
PC90Ym9keT4NCjwvdGFibGU+DQo8L2Rpdj4NCjxoMT5DSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9t
IENJX0RSTV8xMjI4OCAtJmd0OyBQYXRjaHdvcmtfMTEwMDg0djE8L2gxPg0KPGgyPlN1bW1hcnk8
L2gyPg0KPHA+PHN0cm9uZz5GQUlMVVJFPC9zdHJvbmc+PC9wPg0KPHA+U2VyaW91cyB1bmtub3du
IGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzExMDA4NHYxIGFic29sdXRlbHkgbmVlZCB0
byBiZTxicj4NCnZlcmlmaWVkIG1hbnVhbGx5LjwvcD4NCjxwPklmIHlvdSB0aGluayB0aGUgcmVw
b3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlczxicj4NCmlu
dHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzExMDA4NHYxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRl
YW0gdG8gYWxsb3cgdGhlbTxicj4NCnRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwg
d2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLjwvcD4NCjxwPkV4dGVybmFs
IFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTEwMDg0djEvaW5kZXguaHRtbDwvcD4NCjxoMj5QYXJ0aWNpcGF0aW5nIGhvc3RzICg0MSAtJmd0
OyA0MSk8L2gyPg0KPHA+QWRkaXRpb25hbCAoMSk6IGJhdC1hdHNtLTEgPGJyPg0KTWlzc2luZyAo
MSk6IGZpLWN0Zy1wODYwMCA8L3A+DQo8aDI+UG9zc2libGUgbmV3IGlzc3VlczwvaDI+DQo8cD5I
ZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2Vk
IGluIFBhdGNod29ya18xMTAwODR2MTo8L3A+DQo8aDM+SUdUIGNoYW5nZXM8L2gzPg0KPGg0PlBv
c3NpYmxlIHJlZ3Jlc3Npb25zPC9oND4NCjx1bD4NCjxsaT4NCjxwPmlndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVAaHVnZXBhZ2VzOjwvcD4NCjx1bD4NCjxsaT4NCjxwPmZpLXJrbC1ndWM6IDxhIGhyZWY9
Imh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzEyMjg4L2Zp
LXJrbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBodWdlcGFnZXMuaHRtbCI+DQpQQVNTPC9h
PiAtJmd0OyA8YSBocmVmPSJodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMTAwODR2MS9maS1ya2wtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaHVn
ZXBhZ2VzLmh0bWwiPg0KRE1FU0ctRkFJTDwvYT48L3A+DQo8L2xpPjxsaT4NCjxwPmZpLXNrbC1n
dWM6IDxhIGhyZWY9Imh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzEyMjg4L2ZpLXNrbC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBodWdlcGFnZXMuaHRt
bCI+DQpQQVNTPC9hPiAtJmd0OyA8YSBocmVmPSJodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTAwODR2MS9maS1za2wtZ3VjL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAaHVnZXBhZ2VzLmh0bWwiPg0KRE1FU0ctRkFJTDwvYT48L3A+DQo8L2xpPjxsaT4N
CjxwPmZpLWljbC11MjogPGEgaHJlZj0iaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fMTIyODgvZmktaWNsLXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaHVn
ZXBhZ2VzLmh0bWwiPg0KUEFTUzwvYT4gLSZndDsgPGEgaHJlZj0iaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTEwMDg0djEvZmktaWNsLXUyL2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVAaHVnZXBhZ2VzLmh0bWwiPg0KRE1FU0ctRkFJTDwvYT48L3A+DQo8
L2xpPjwvdWw+DQo8L2xpPjwvdWw+DQo8aDQ+U3VwcHJlc3NlZDwvaDQ+DQo8cD5UaGUgZm9sbG93
aW5nIHJlc3VsdHMgY29tZSBmcm9tIHVudHJ1c3RlZCBtYWNoaW5lcywgdGVzdHMsIG9yIHN0YXR1
c2VzLjxicj4NClRoZXkgZG8gbm90IGFmZmVjdCB0aGUgb3ZlcmFsbCByZXN1bHQuPC9wPg0KPHVs
Pg0KPGxpPmlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaHVnZXBhZ2VzOg0KPHVsPg0KPGxpPntmaS10
Z2wtZHNpfTogTk9UUlVOIC0mZ3Q7IDxhIGhyZWY9Imh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExMDA4NHYxL2ZpLXRnbC1kc2kvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUBodWdlcGFnZXMuaHRtbCI+DQpETUVTRy1GQUlMPC9hPjwvbGk+PC91bD4NCjwv
bGk+PC91bD4NCjxoMj5Lbm93biBpc3N1ZXM8L2gyPg0KPHA+SGVyZSBhcmUgdGhlIGNoYW5nZXMg
Zm91bmQgaW4gUGF0Y2h3b3JrXzExMDA4NHYxIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3Vlczo8
L3A+DQo8aDM+STwvaDM+DQo8L2Jsb2NrcXVvdGU+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_0401915cabdfc12a2d27fa3c8d4730c51059dc03camelintelcom_--
