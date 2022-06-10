Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E570545D49
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 09:25:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0C110F4A9;
	Fri, 10 Jun 2022 07:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D903E10F4A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654845953; x=1686381953;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=PMzAfP3vC+V90d9f+0mDi0MaEq+ZTk31RP2EcGJw+ng=;
 b=FbqXmw8HReLC4V2Acvv4+jW+FRq7WQUXaMJecQsXboOuYkhh2ox4Vbwy
 X6ziOE1Q+9Zyqe2xFfniYfv/N5luY1TrKjgDL/7XS9XnhQkXrP240dErT
 ev84HhbPtUzE+YqQ9wyP56bjRsg1Of0TVaQgtYYUSjrsVFr/89QqrX/mX
 zIlYORbn9iVYAKvGCBmrzBfKVBS2bN2hKQUN0QRKRrKJFMBkkOakMXCoY
 JF4oOno9G3Y2k+AaB3VyNcn1XN8W6FqzYhxvgNOdpb5zugDpdpPFgO9/4
 MQiI+tUxKF/kacBomdQNRamyEBJRBRttoKnp6YVo0StiJA4skoVriZDDi Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="339298180"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="339298180"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 00:25:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="566740819"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 10 Jun 2022 00:25:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 00:25:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 00:25:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 10 Jun 2022 00:25:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 10 Jun 2022 00:25:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h/tQN/M+7cWMmqoWcCori7XhNzmg3yAIVr+7sKOHC7BixqzQCZi94bE+1/+qKceSAdIruZFBQ+TvSsQYu4Pd0phrpBUUFBug2Zw2Zj5+gTsgdSSIP7c367Iq5AP2ZC6J/mpHdpwfHtVKbkqOMPM7X8kTuvdlb9kE+zycqSnOnDJUHTUczJ96B/evfUzvcXicJtHth/ptL7RWk1PdtCY4iz7ifl5J95FcABDNApI/enw9j+Wi5iiyEyPiF/KXTFY3ACobc8MNa2iEEpmpvqMSHq+FjS7CH9GeNkZyI2v5r5oFJlH3SqvVqZzuvn+e+0GIXVTPkWgws+nc4hnjSpBz1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PMzAfP3vC+V90d9f+0mDi0MaEq+ZTk31RP2EcGJw+ng=;
 b=giPoSr1YYt2YW3AfMfJ7ZTu98btLgPdaq6suUQQpQ5CAT0UzKrLd6aicPPKktH/UtE06RLn6N3M7Li9Net9Zs4LqJ5Elp9C7VyMiBADVRUcnZ4lewyK1xMtTHLikdhz87qPXRwPhZx3HFLVmMe/kQBIr9VwdeEKeUV8c8idIppPyfrE7mkNl+lXw6qrDoNR+47tsvfDB02zkdIwmYJVfc6jIPgwMfGZ4bBKlkWjKAh0Hyh72FMIDS1itmAmF/MrwxrcYpB+a9+Sp4UfKf4H/cXzls8l7v06jpfepZGQ8c23oV5cmmKxfdGORzXnj3pQXHviJ4wY1uerr4D0Vt5dfSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BYAPR11MB3191.namprd11.prod.outlook.com (2603:10b6:a03:79::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.13; Fri, 10 Jun 2022 07:25:30 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f%3]) with mapi id 15.20.5314.019; Fri, 10 Jun 2022
 07:25:30 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Souza, Jose"
 <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to check
 if headless sku
Thread-Index: AQHYdzK5I5Fh8Y/l3EawA39lhGFtWq09oLGAgAAIngCAADdkgIAEKJiAgAADxwCAAFN+AIAF55CA
Date: Fri, 10 Jun 2022 07:25:29 +0000
Message-ID: <3604caa71f8953e3a1bdd93ef788c60d9c2bb70f.camel@intel.com>
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
 <20220603101411.3087789-2-jouni.hogander@intel.com>
 <87k09xor2e.fsf@intel.com>
 <eeac0a25543a75cbeb39eaa61a1abbfdcfb94a6f.camel@intel.com>
 <0069e1028bfccf5f1c3f7b8d8a129c202f4cf764.camel@intel.com>
 <f69cf635fc2da871baee0bbbbf946addf9a35ddf.camel@intel.com>
 <875ylenr4t.fsf@intel.com>
 <8a83b4595e603df3ed8975a31425639b714b57bd.camel@intel.com>
In-Reply-To: <8a83b4595e603df3ed8975a31425639b714b57bd.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5c51531-9685-4f6a-407a-08da4ab265d2
x-ms-traffictypediagnostic: BYAPR11MB3191:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB3191BD48363D5D18512014008AA69@BYAPR11MB3191.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NCNi304g8vQYnnteJtJm6hvep1V+G0Bm1KSBXyDKXCM0bkH8T8sR4r7D81Ewj+OBnUfRPS9PO+0W8FKiVy0LRnj1SHM7eaVNPs8jRHsB/X3i5LImjX2tlTBUcua4Wxa98ZKPPk5F/kVwrzIRdiLl1H/2YU2ENMcJ4vt7sEo8e9wXwoVid6oYikwUvGaEp+BZWBEPWB9dTkLYsOa49JN3pX+TLPxCuvu6ipiVo4x/BSIIFuSka6bqHUeAoa3xJ/BPY+bwLdxlFBcvtfJEWl6cQco7n28u7qqUREJyo7DA1h7iLLbSK2egz0YcKN1rPRZPU1ibXmENgTXIQyro2t48Ru2AY3fPKDJiYn6NP3AKhHSbTH9Kk1fRedmXN0g+OBx3/JOv2S/N43BLOfbZ91HC7u5IbV3e0MQ0521xSBbNUARXtQD9B/xG4Q2a0vHjASTem6YQ9g5C9XXneJf8CV31gypkChNUWP+aenpAVn7aDrQFev2tkSocRyBW7EUdvJrw/Fh0hE03v71INTCsbvqZxB7M8A4DlWQCBAzlznujr1e3qG/uUyoSfLkKwpY8RF0+XeA27ZUzbxr2qWntp5I+HqYOj55tZPtwKvit6H1HBl7kjHmxSvVwZC7IZ5uMtKPRA/314bl//2056H5zYbHKumtWxx7ekthw1o2e6+Sk7TlXjO0hpgTdy/c4olyQEAS++iUKcRE1FLLO8f2/dO3fVQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2616005)(82960400001)(8936002)(6486002)(5660300002)(508600001)(71200400001)(122000001)(83380400001)(186003)(6506007)(86362001)(316002)(66574015)(2906002)(38070700005)(6512007)(26005)(66946007)(66556008)(66476007)(76116006)(64756008)(8676002)(66446008)(91956017)(38100700002)(36756003)(6636002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RTV2djlUOXN1dVdQSkpLc3NqYTc0bytzemw3QnlPNEtNempLd3hPUzJRdDRW?=
 =?utf-8?B?ajd5bmpmYm1kZ0h2cXU5T21WTExUS1loZklYQXF4Mml5NUFZYmJML29IcEMv?=
 =?utf-8?B?OWZvSTlSSzZ2WGMxbzd5VzZaZzZBVnQ4dyt5TzNrYzcyMmxjaWNjSDBBV29v?=
 =?utf-8?B?Q25aUEpmTXRZaEpSSlQ0QUZEL240VHRXQzFKUmRVTTlaN3J0ZmEvNlNOZ1hE?=
 =?utf-8?B?NjJCWmREcFFHMmYyYit5eU5QS0xQVGZ0cTdBekJINmo3V3pRL1IzUXRIMlo4?=
 =?utf-8?B?WCtXWWozTmt4SHFrellQbHlyaFdDTmpiaVNkbFB6aGNEbVVPemtEM0RzRUx5?=
 =?utf-8?B?L2xjOXhVNmk4YkFZckVTRENINEVvbFljSmZ5RkdiOE5OeFhUckZBdkttOTBF?=
 =?utf-8?B?TUU2YnZjbUtrMWxJcDBMSmliYms3OW5SNVJYVmZSQnUzT2hZTitzdWZmek5Z?=
 =?utf-8?B?MW9PT2xwMDN5LyttNm90UFNZbTBIbWpFRUdTd0xFSlVJZjhhWVFISk1CQzZM?=
 =?utf-8?B?WGF2WjN4UU5wdS8xSXBYamRyQU4wLzQ0TGUrVmFiMjJ2THlWeUJQajRvZSt5?=
 =?utf-8?B?TmkrQlkrZ2k1QlpHemh1OER2b09Wc0hqaThHaUxHVUZjbVNNS01kOWNiZ1Ex?=
 =?utf-8?B?VnlyMGxGVHFGdnRxWkxTaHVnc3lvRU9udW5iSVhHenVhUFJDWk45b3Q5NE5F?=
 =?utf-8?B?T2NNSWo1cS9BTkdPN2ZhWkExYktiWGQ2UDZSS1l4eGlpMkxmcTEwYXVFd1Fl?=
 =?utf-8?B?V0pKb1N2a3RPblpBWjF0VVg4U1NKd0dQTGsweEMrajQzWjZiTGZML0Y0N3Ro?=
 =?utf-8?B?ZjRRRDZvYzdCU2h1UGhQZlg2U2dTNThjc1FYaFBnN1JuZFdSZVBnWEI4bnhQ?=
 =?utf-8?B?YzVRZUR0M2l1dlpHVWtwN0VVdDVxNUtkSzg2TjdoUXRtT2hpc1Q2NURTb3BN?=
 =?utf-8?B?V2oyZnFKang1Z0l5OEMvRUZxVmcxdWhLU1ROZTlvdGR5OFBkMGhlVjlHRUpV?=
 =?utf-8?B?aDdRRExJL250bEIwazVyRGMwRjlzOVdoYzVXcENsNzJnTXBlRFA1WDBWc1J2?=
 =?utf-8?B?ZFFuNFlaOVJ3em8zeTdGNllXWWk3V0dNRThCRWdtYmc0SSswUVRYRWZaaklh?=
 =?utf-8?B?dkhvdVJmeHN6Ymp0V2VSQ1RDVG51YTV1MUxmRFhTbS9LUGlpWnRpYlcvdEtF?=
 =?utf-8?B?RDJwOVNVaDF0OG1DN2xWZHhMWUo1R3VBVTF4MkRiSHRZVWVleWxiNk9aNTNh?=
 =?utf-8?B?RU5BeXYxWS82SERrakhvcXNJTEh3NzcrTy92ekduZHFJNDFwdVZIMEdEc1Fz?=
 =?utf-8?B?TGZNa1M0cERDU2d5QVhmcmFDSC9CZlRCZG93VHc3RGRaVzFnS1FvT09xam1H?=
 =?utf-8?B?YWw5d1pIQWR1QnlSdWwvMDdmTmpjbnFyc2tsWThSR3ZpVk82SUNjNFNURGJC?=
 =?utf-8?B?QXA0aitPTjlyeS9ETU1yVkhoV2l1bXN0QkRhc1VBdk8zVksxY2NtZWw3WUxG?=
 =?utf-8?B?aENRT0FhVEVUWityOGI3UmxFUFVXKzY5Z0FIWWYrS2RjUjhRUk9zQUNQNnhy?=
 =?utf-8?B?M2N2RVByQTk0U1c5ZVhWb01Jb1RKdkJjVitBbkhlWWdhMzlmOXdFUmFJTDRY?=
 =?utf-8?B?U0JrMno4V3N3Zm01TWNpeHlwbG0vOWZuR3JrS1RINTZjSW1sU0tZVWJsdjE4?=
 =?utf-8?B?ZDhCclMvamtncThOSFNpdlFOME9uLzhyL0F0V1pxSVFqc0czT3RNMGozcWxa?=
 =?utf-8?B?OGRKejB6ZlNJZnFUVmNKVUVianliQllCYk42SHNvSGdlUkdvT0Z0eWF1ZVB1?=
 =?utf-8?B?a3NFLzVyVHpvWEtNWC9jQkpWZWVYTUdBdVBTdmJ0RzJXdk5rcHNJbzdMbUx3?=
 =?utf-8?B?NCtzdDNLakFITFNCNlIxYVFGZ1BGUzZqTGVzR0c1Z3ppUVBoNWFId2xRNVlF?=
 =?utf-8?B?dld4amJCblpFOHFObWtiT0xVbzBJcGhjZmRvWWlueUkwZHdWMGpXSURVckdM?=
 =?utf-8?B?emVja3FkZHRFajB0aEV1NnlBMjdqOUd4UnMxVGFrblB6Vi95QjM1dld6b1N2?=
 =?utf-8?B?SmlWK1RKQkJ2SGJKRncxWC9uMVROcEp1em9tZy8xbXMvaXVnNTVMaGRQLzFy?=
 =?utf-8?B?cW84ZUoyVEtGY1V5akxyUG9MZkN0dnRtRkd0ME1xSHNST3NFNXIxQTZnMm44?=
 =?utf-8?B?dXljaExIS0FScW5nZ3hjR3BSRWhWWnVzSzk0aHRjcGdEQjRQMHBVZ3IrNnVT?=
 =?utf-8?B?eUdraEZRcWdjWTNnQXQ3QXNKc3pjR05qUUxhN3hNNmpjdUpLQUgzb25rMkhX?=
 =?utf-8?B?OXIwR3pmRnYvdjl4TUM5NUNiemNTR0FTTlIyN3lxZVF2TDdSbWhOWklnVUs3?=
 =?utf-8?Q?uyUlmge6eUYnXpTbqNwhJU4mTD2SthTNYHGaT?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A6D621FE2A382C44B8AE263D3A5B8A77@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5c51531-9685-4f6a-407a-08da4ab265d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2022 07:25:29.8633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EVLHSc7mKDHQmNFNQYhpya8Oh1U3rCYlJmKR/YDZhqP0XMpSkemeLXHyCKWL87i9g609Y68LGzjOWyUwgMcwO7eJm6ThWsAQ2TmZrPrImjo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3191
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to
 check if headless sku
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

T24gTW9uLCAyMDIyLTA2LTA2IGF0IDEzOjE1ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gTW9uLCAyMDIyLTA2LTA2IGF0IDExOjE2ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
PiBPbiBNb24sIDA2IEp1biAyMDIyLCAiSG9nYW5kZXIsIEpvdW5pIiA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiA+IHdyb3RlOg0KPiA+ID4gT24gRnJpLCAyMDIyLTA2LTAzIGF0IDE2OjMy
ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4gPiA+ID4gT24gRnJpLCAyMDIyLTA2LTAzIGF0
IDEzOjE0ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6DQo+ID4gPiA+ID4gT24gRnJpLCAy
MDIyLTA2LTAzIGF0IDE1OjQzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+ID4gPiA+
IE9uIEZyaSwgMDMgSnVuIDIwMjIsIEpvdW5pIEjDtmdhbmRlciA8DQo+ID4gPiA+ID4gPiBqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4gPiB3cm90ZToNCj4gPiA+ID4gPiA+ID4g
RXhwb3J0IGhlYWRsZXNzIHNrdSBiaXQgKGJpdCAxMykgZnJvbSBvcHJlZ2lvbi0+aGVhZGVyLQ0K
PiA+ID4gPiA+ID4gPiA+cGNvbiBhcw0KPiA+ID4gPiA+ID4gPiBhbg0KPiA+ID4gPiA+ID4gPiBp
bnRlcmZhY2UgdG8gY2hlY2sgaWYgb3VyIGRldmljZSBpcyBoZWFkbGVzcw0KPiA+ID4gPiA+ID4g
PiBjb25maWd1cmF0aW9uLg0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gQnNwZWM6IDUz
NDQxDQo+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmku
aG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYyB8IDEyDQo+ID4gPiA+
ID4gPiA+ICsrKysrKysrKysrKw0KPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5oIHwgIDcNCj4gPiA+ID4gPiA+ID4gKysrKysrKw0KPiA+
ID4gPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspDQo+ID4gPiA+ID4g
PiA+IA0KPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0DQo+ID4gPiA+ID4gPiA+IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5jDQo+ID4gPiA+ID4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5jDQo+ID4gPiA+ID4gPiA+
IGluZGV4IGYzMWU4YzNmOGNlMC4uZWFiM2YyZTZiNzg2IDEwMDY0NA0KPiA+ID4gPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMNCj4gPiA+
ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lv
bi5jDQo+ID4gPiA+ID4gPiA+IEBAIC01Myw2ICs1Myw4IEBADQo+ID4gPiA+ID4gPiA+ICAjZGVm
aW5lIE1CT1hfQVNMRV9FWFRCSVQoNCkvKiBNYWlsYm94ICM1ICovDQo+ID4gPiA+ID4gPiA+ICAj
ZGVmaW5lIE1CT1hfQkFDS0xJR0hUQklUKDUpLyogTWFpbGJveCAjMg0KPiA+ID4gPiA+ID4gPiAo
dmFsaWQgZnJvbSB2My54KSAqLw0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gKyNkZWZp
bmUgUENPTl9IRUFETEVTU19TS1VCSVQoMTMpDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEhl
cmUgd2UgZ28gYWdhaW4uDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFdoYXQgZG9lcyBoZWFk
bGVzcyBtZWFuIGhlcmU/IFRoZSBzcGVjIGRvZXMgbm90IHNheS4gRG9lcw0KPiA+ID4gPiA+ID4g
aXQgaGF2ZQ0KPiA+ID4gPiA+ID4gZGlzcGxheSBoYXJkd2FyZT8gQXBwYXJlbnRseSB5ZXMsIHNp
bmNlIG90aGVyd2lzZSB3ZQ0KPiA+ID4gPiA+ID4gd291bGRuJ3QgYmUNCj4gPiA+ID4gPiA+IGhl
cmUuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gVGhpcyBpcyBmb3IgaHlicmlkIHNldHVwIHdpdGgg
c2V2ZXJhbCBkaXNwbGF5IGh3IGFuZCB0aGUNCj4gPiA+ID4gPiBwYW5lbCB3b250DQo+ID4gPiA+
ID4gYmUNCj4gPiA+ID4gPiBjb25uZWN0ZWQgaW50byBkZXZpY2UgZHJpdmVuIGJ5IGk5MTUgZHJp
dmVyLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gV2UgaGF2ZSBJTlRFTF9ESVNQTEFZX0VOQUJM
RUQoKSB3aGljaCBzaG91bGQgZG8gdGhlIHJpZ2h0DQo+ID4gPiA+ID4gPiB0aGluZw0KPiA+ID4g
PiA+ID4gd2hlbg0KPiA+ID4gPiA+ID4geW91DQo+ID4gPiA+ID4gPiBkbyBoYXZlIGRpc3BsYXkg
aGFyZHdhcmUgYW5kIGhhdmUgZG9uZSBvdXRwdXQgc2V0dXAgZXRjLg0KPiA+ID4gPiA+ID4gYnV0
IHdhbnQNCj4gPiA+ID4gPiA+IHRvDQo+ID4gPiA+ID4gPiBmb3JjZSB0aGVtIGRpc2Nvbm5lY3Rl
ZCwgaS5lLiB5b3UgdGFrZSB0aGUgaGFyZHdhcmUgb3Zlcg0KPiA+ID4gPiA+ID4gcHJvcGVybHks
DQo+ID4gPiA+ID4gPiBidXQNCj4gPiA+ID4gPiA+IHB1dCBpdCB0byBzbGVlcCBmb3IgcG93ZXIg
c2F2aW5ncy4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gTWF5YmUgd2Ugc2hvdWxkIGJvbHQg
dGhpcyBvcHJlZ2lvbiBjaGVjayBpbiB0aGF0IG1hY3JvPw0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gPiBNYXliZSB3ZSBuZWVkIHRvIHVzZSBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoKSBhbHNvIHRv
DQo+ID4gPiA+ID4gPiBwcmV2ZW50DQo+ID4gPiA+ID4gPiBwb2xsaW5nLg0KPiA+ID4gPiA+IA0K
PiA+ID4gPiA+IFRoYW5rIHlvdSBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuIEhBU19ESVNQTEFZIEkg
YWxyZWFkeSBub3RpY2UNCj4gPiA+ID4gPiBhbmQNCj4gPiA+ID4gPiBpdCdzDQo+ID4gPiA+ID4g
bm90IHN1aXRhYmxlIGZvciB3aGF0IHdlIHdhbnQgaGVyZS4gSSB0aGluayBib2x0aW5nIHRoaXMN
Cj4gPiA+ID4gPiBjaGVjayBpbnRvDQo+ID4gPiA+ID4gSU5URUxfRElTUExBWV9FTkFCTEVEIGFz
IHlvdSBzdWdnZXN0ZWQgaXMgZW5vdWdoLiBUaGF0IHdpbGwNCj4gPiA+ID4gPiBwcmV2ZW50DQo+
ID4gPiA+ID4gd2FraW5nIHVwIHRoZSBodyBpbnRvIEQwIHN0YXRlIGZvciBwb2xsaW5nLg0KPiA+
ID4gPiANCj4gPiA+ID4gQSBoZWFkbGVzcyBza3Ugc2hvdWxkIG5vdCBoYXZlIGFueSBEREkgcG9y
dHMgZW5hYmxlZCwgbXVjaA0KPiA+ID4gPiBlYXNpZXINCj4gPiA+ID4gY2hlY2sgZm9yIHRoYXQu
DQo+ID4gPiANCj4gPiA+IENvdWxkIHlvdSBwbGVhc2UgY2xhcmlmeSB0aGlzIGEgYml0PyBXaGF0
IGV4YWN0bHkgeW91IGFyZQ0KPiA+ID4gdGhpbmtpbmcNCj4gPiA+IHNob3VsZCBiZSBjaGVja2Vk
PyBBcmVuJ3QgRERJIHBvcnQgYWxzbyBkaXNhYmxlZCB3aGVuIG5vbi0NCj4gPiA+IGhlYWRsZXNz
DQo+ID4gPiBzZXR1cCBpcyBpbiBydW50aW1lIHN1c3BlbmQ/DQo+ID4gDQo+ID4gSSBhbHNvIHRo
aW5rICJoZWFkbGVzcyIgYW5kICJEREkgcG9ydHMgZW5hYmxlZCIgbmVlZCBjbGFyaWZpY2F0aW9u
Lg0KPiA+IFRoZXkNCj4gPiBhcmUgb3ZlcmxvYWRlZCB0ZXJtcy4NCj4gDQo+IEluIGEgcHJvcGVy
bHkgc2V0dXAgaGVhZGxlc3Mgc2t1LCBWQlQgc2hvdWxkIGhhdmUgYWxsIHBvcnRzIG1hcmtlZCBh
cw0KPiBkaXNhYmxlZC4NCj4gDQo+IGludGVsX2RkaV9pbml0KCkgew0KPiAuLi4NCj4gDQo+IGlm
ICghaW5pdF9kcCAmJiAhaW5pdF9oZG1pKSB7DQo+IGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJt
LA0KPiAgICAgIlZCVCBzYXlzIHBvcnQgJWMgaXMgbm90IERWSS9IRE1JL0RQIGNvbXBhdGlibGUs
IHJlc3BlY3QgaXRcbiIsDQo+ICAgICBwb3J0X25hbWUocG9ydCkpOw0KPiByZXR1cm47DQo+IH0N
Cj4gDQo+IA0KPiBBbGwgRERJIHNob3VsZCByZXR1cm4gZWFybGllciBpbiB0aGUgYWJvdmUuDQo+
IFNvIHlvdSBjYW4gdXNlIHRoZSBudW1iZXIgb2YgZW5hYmxlZCBjb25uZWN0b3JzIHRvIGtub3cg
aWYgaXQgaXMgYQ0KPiBoZWFkbGVzcyBza3Ugb3Igbm90Lg0KPiANCj4gU28geW91IGNhbiBza2lw
IHRoZSBwb29saW5nIGluIGNhc2UgdGhlcmUgaXMgbm8gY29ubmVjdG9ycy4NCg0KSSB3ZW50IHRo
cm91Z2ggdGhpcyBhbmQgdG8gbXkgdW5kZXJzdGFuZGluZyB0aGlzIHBvbGxpbmcgZG9lc24ndCBo
YXBwZW4NCmluIHNldHVwIHdoZXJlIGFsbCBwb3J0cyBhcmUgbWFya2VkIGFzIGRpc2FibGVkIGlu
IFZCVC4gQ29ubmVjdG9yIGlzDQpub3QgaW5pdGlhbGl6ZWQgYXQgYWxsIC0+IHBvbGxpbmcgaXMg
bm90IGVuYWJsZWQgd2hlbiBydW50aW1lIHN1c3BlbmQNCmhhcHBlbnMuDQoNCkJSLA0KDQpKb3Vu
aSBIw7ZnYW5kZXINCg==
