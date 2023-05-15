Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 012097031C1
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 17:42:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35C5C10E034;
	Mon, 15 May 2023 15:42:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7F8410E034
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 15:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684165350; x=1715701350;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GR9gxW+9l7PMp1dzkOA+qc3fJKkIRBbxBHHccegaKkY=;
 b=aaKI6J4RiTIYE6nWauer4RQWBvDXLq/oM2Tj4pBVmgjKl4nykFww8dKl
 CQ1TKGzHcp7eQPi8WEB237nKD7ZEN6FFw0WVcOxGXqc+YKK0Fl0iOmoj5
 UO33cYyh8UV4BMZXjTmlqOJcpllKqew4Amn0Jolq5vXbShB03tvWQS2Je
 /OB2HczvtMBUAsERRXgFr2FUf7SKeL98TZaN2p8PeDlRUcDrHnpA1CuoG
 Ib4Nzp0nJ3ieB5h5T1JgN9u2tvNZGHIrsGrXgquEtZkXD49uJ1Frfv6zP
 Zjxyst5FCdYIRJjhSd7MfVOEbXw3+kCSb4dN9AHt9whxKRsTJrq0OTEEo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="353503559"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="353503559"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 08:42:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="790699113"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="790699113"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2023 08:42:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 08:42:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 08:42:27 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 08:42:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ejuzGZkERqFQRKryVoPe7EIyRZpL03QfMbYDUfKP0SMyue1dTBVQ76MWvNgahZ+zURsjSwlF6SLouuauSU9ywaXJI5iyw8sHQkix763d4QY6Qi3YLAIK9KBeod1J3r5Dc2zeUE7FVbqlPAWAH88yM/It3lfRdBQ1N6u6hJz9XlK4NiLxKZZ3m0ih7KNp16awebsBXlUqZ5WldI4vPD0UcN4eZO5J5qJVh9lA4LKPJU6CzeZvblJJtMj+POYxF3CHD43QIylhlak04UuxA0QZiFFwUadXOW/cWxSgFapeYsOmT9ioBP/oOuJParMjurDimMxGzQJXxxel6BMYaHuwaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GR9gxW+9l7PMp1dzkOA+qc3fJKkIRBbxBHHccegaKkY=;
 b=VP6VpDtbRVLm/WUisTBOA9ea7BQbO+tpzCIOo2nnOxvBnqABtldybkRNGKyY01xs13BSec7pdJ/4F0+Gj3zSv6/txhKZFz4rbR5nL1brhBuI26gfCYdIf/k72EI89BavIJhYiibiTK5sSGn7s3GSdjWjI4djzniJa8uqi2I9Yi2hQ4Vju4qAtvS5V2ijCpmCcOmBL71MsYgvvyO5qPcabn+esVgKLQD5pqdyuc6tdxpyezCI8bQX/ziVCE5Cm67uQCdD0bStFxqkiMjcS72AXE3da+nkwNX4xD4FrfMPxx6wBJf9wggExNvm512HcLR4SoAc7EDZFCwBqiWyMmtNmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DS7PR11MB6296.namprd11.prod.outlook.com (2603:10b6:8:94::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.30; Mon, 15 May 2023 15:42:25 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 15:42:25 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 1/2] drm/i915/mtl: Extend Wa_16014892111 to MTL A-step
Thread-Index: AQHZhUDeX9fx/xGh+US3XYGMgaQOaK9bbQUAgAANAwA=
Date: Mon, 15 May 2023 15:42:25 +0000
Message-ID: <DM4PR11MB597193BE801E39B1A1FDE4A887789@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
 <168416187402.13184.12797174790557715354@gjsousa-mobl2>
In-Reply-To: <168416187402.13184.12797174790557715354@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DS7PR11MB6296:EE_
x-ms-office365-filtering-correlation-id: 53765b55-17aa-402b-846d-08db555afb5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9MwGhK+pj+vjffU/pLN7+tJS1UdbhMiQVUu1EhwbXLmM7Lg5md63vjLRIMPVcJinjIOTlDpvxCxqjsF6lEqJnWN0cZ+1G00X4ZM+Ecc4e9oX6QYGgVe74ZoC1XFbDgOhzgO+48hbE4dPcC6NqcqoK3JnPHVkepsQ435h4tWylxidhNJoDWqnI/5AQHuaEYOLxvxEB3oD2FNXSEClmn3Fc9OGVelz4zIHBAUJ94SvZbRFVi37IBOuFXjn/15NX/gq5aE7AMSbrxCP3JcjobMy/YCu2ghm39t/kJSz4bHpNkxuPDMj3cHkeT6/tZFVaFazdhnCV2Co53kPoY5W0qBMzp90wVWOkP7nz4JjiErY48vijJ/dNk17tTKsA+I9cM6DSG6SnjrA10mQVCh5gs/YE+nG6Ks3Ui6AsS0LMt1VFME7uF5fbqW0G/fZBOOnwQUSRwlDnFURxpMeIpmsxU/pGyIFOCCrISRV75vgM81bDQo6ia+HEBGdcgZVsX52JWkEJZYMIL1JdhsQHoZJYEovDfCnjgklvvi4HJ/fPKDimMVSa/6X46tD1TtnHjR4Yk/KKDv2KctuOxY1MuWV86BnuM2m9sP7BasRp5MRpAf0/cMspzvIvPXI7TuQACRZlWV5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(396003)(136003)(366004)(451199021)(66556008)(54906003)(110136005)(478600001)(4326008)(64756008)(66446008)(66476007)(66946007)(76116006)(71200400001)(316002)(7696005)(8936002)(2906002)(55016003)(8676002)(41300700001)(5660300002)(26005)(52536014)(107886003)(122000001)(82960400001)(33656002)(86362001)(38100700002)(38070700005)(83380400001)(53546011)(186003)(9686003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WlRMeXBwVmJKWGx1RHRhekFBR3JLamdlL0EzMkczRVF5TnFxY05GTllhWDBz?=
 =?utf-8?B?ckNhdSt3L2xJa3ZJaVNvS1Z4eUNHRVdwYzBOUzN6anNxR2c1THRhdzFEeWgz?=
 =?utf-8?B?ZWorcnhZSEMrUXQxMWhJYWVQcHd1Qlpka2Z4Z3ZuWTZ1ak9SeEloaDNXUkor?=
 =?utf-8?B?T0s0MEQxMFFLTERPbWpjYWRKT000OU5LeFpyeEZZUng5OVFacDQ1QStxYk1m?=
 =?utf-8?B?RStxZ0l1K2lXS3o3TXM5UW5ncUZ5cFNKUkNPRGhKSmpoUnpXRWxKL25qYU1F?=
 =?utf-8?B?a0ZwaGJ5Qi82ZmVmUjRSMUZQTFd5YnpaMmpSZ1h0WmtHdmhjUUhOUFAxQ0Q0?=
 =?utf-8?B?VGNQMHd0QnBlbGVZSURQVHQ3TG0zdnE0cjFTaHdGNkZGMTNUbXhLQi9xSXRj?=
 =?utf-8?B?UHJ2R1VFcWRwY3VQUG1jNlgyR1FQNnNDSXp3amUzYU5qR3A1eUtMVTQ3SXA2?=
 =?utf-8?B?QVVsS2xyV1BXZjhtbmp0TXZ5OG1IbnV2WmphQVhUTUZEdmMyV3ZKYXErbzlz?=
 =?utf-8?B?MHZXWjZyQTNQbVRMZXRYVDdmNFFsNUtlS1AyUC9YTi93UmU3Q3ByL1F2VGIv?=
 =?utf-8?B?Sy9nVnBFZ3ptYm9vTDh0clVvc2RGbm9HVUNhRmltRndpNFc4cGo2OVBLU2I5?=
 =?utf-8?B?VUs5RzhTMW80VXZlUXZIQnZpZE9tRkVOaytLWElUM0JRY01NMnlmbHFpdGJ5?=
 =?utf-8?B?STFDdEpWYmJZOTlHR2pQVDNvTmwveTJvYkd5TlR2aktaYWhpUDRqSk1ZbVNV?=
 =?utf-8?B?UWRzWURwTU04bFZZaCtaQVlVd1R4TE9QeDRsVEJhZ29PYXpkYW0ySDg2aUJK?=
 =?utf-8?B?L0p6VFpqbVRodmpYSU1sUVVwenVMSWFKV29KcENTdUdYWVlFNVpHYytiT3ZQ?=
 =?utf-8?B?U1RWSndYQkx4UzFhMGtsYkd5YStCM3V6REJHbVhnTzU5VEwyZlhURmNqK3l3?=
 =?utf-8?B?STZxbysrL0p1UTAyUERKa2tUbndmYjNGb0dSL1RtREdvQ1g0djltNjY4cS84?=
 =?utf-8?B?RkkrN3poN1N3N0NMNmU1OGNxc1UvQ2NxbVZyUExDNW9uMlU3T2dsL2hvbUo3?=
 =?utf-8?B?bWJzUmU4elFMNUlMdUVRLzQvcGY3S3hodFRUdE4ycWRZR3V1Z0kyY3BQbTh0?=
 =?utf-8?B?emRpQTMzaWgrS0cxU2xYQlFFZGllaVZYZjB6YjdvajFNMWhwYXE5MmxkQnls?=
 =?utf-8?B?RFJ6V2dkNHJEblZxcnQyS3YwaGo5Ym1CZ2VTeVYwaGpON05RZ0hHN1diVnJ2?=
 =?utf-8?B?cUZ2SHFvaTFDMGNJTU5uTkZYR0c2RVBIOU1iUXFmMGtIVVpMUTJ4YWxkOGJM?=
 =?utf-8?B?eHBoMGw1cFVXY3BDVEY1UHB5MGlmTTZBWThUemJoOEZkY3A0WVRwb3NBei8w?=
 =?utf-8?B?QStxZDRBY3Z3YVZJblFiZ25MVVlqT3AzVHA4NTJWSGN0V09OTmI5ZnpiNkhC?=
 =?utf-8?B?TVlZdFkxbjZYOWZ3SzJiZWdKVTgwSnlKR2pZRGV5NUk5MHRhd0R3NHNuTThF?=
 =?utf-8?B?VVJFQkp5TkkvaWpVY3lsV3VGQ3FwUWZuTTRWd3lWNS9RSngxakNyZjBGUlRP?=
 =?utf-8?B?cytDV0R5WFVKSFBLd3VMTVlVcjNESXkvSDNtTFJBR3RoSE53S3lNZDZVU3py?=
 =?utf-8?B?OWw5LzltS3VtcmRFaEppYXkyTGtacWhuVmJheTJTc0NMRlNNRUt1SEszWXlB?=
 =?utf-8?B?LzgyNEhocWY3emxSQkJ3a0hNMlVDV3NPVmFzU1hRSTkzWXhyZUFSVmVCNmVa?=
 =?utf-8?B?d3lvMFdRbFRiQUZaMmZnRkFuSUU5SCt3eWRFRDVIUGxiZ0xhb211YWc0Q0gy?=
 =?utf-8?B?MjNXWElwU1FQRlJZUGZTQUd0MGJCZkgvV2tzZGZIVEhhNExHdlZoY21nQmFi?=
 =?utf-8?B?dTZsZk9RaXZWZWtjWnBoZ2N6QlhJZXVMWU5Na21SWXV3ekpNUzMrcnJhc3px?=
 =?utf-8?B?cEZZYldtMm5VS0dkMXppZ2N0V3FqVEZWSTBiVGMvNkUwRFEwSXc4K2tKTzlP?=
 =?utf-8?B?ZklqQ3VuZE9Ib0U0cnRLQi9Ta2JuVFdrN2thWEZUaWZ0ZkdKSTRPczZRN3Rk?=
 =?utf-8?B?eWRoakVxUy9GeDNhN0JHNFR4SHpvUVhTMTZ1MnFWYWxuN0xQd3ozV1owK1hQ?=
 =?utf-8?B?aGdRR1BORzRkbWJxbGxnTUx1UWxKYnFpTXNXdzlzS0lRSlgzcDVaZ3Fya2Fa?=
 =?utf-8?B?cGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53765b55-17aa-402b-846d-08db555afb5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2023 15:42:25.5547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BchbZMJDuBxH40eLb9FIyz7jgdpw/Y1Lt8EbwV8Cb72r/qDMc1y9DAZXh/d1xPjTv3q3ba1AUBvDlMgou677urRfX6EDgVi1OFUOgEqfa5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6296
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/mtl: Extend Wa_16014892111
 to MTL A-step
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgR3VzdGF2bywNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3Vz
YSwgR3VzdGF2byA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWF5
IDE1LCAyMDIzIDc6NDUgQU0NCj4gVG86IFNyaXBhZGEsIFJhZGhha3Jpc2huYSA8cmFkaGFrcmlz
aG5hLnNyaXBhZGFAaW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gQ2M6IEp1c3RlbiwgSm9yZGFuIEwgPGpvcmRhbi5sLmp1c3RlbkBpbnRlbC5jb20+OyBT
cmlwYWRhLCBSYWRoYWtyaXNobmENCj4gPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT47
IEthbHZhbGEsIEhhcmlkaGFyDQo+IDxoYXJpZGhhci5rYWx2YWxhQGludGVsLmNvbT47IFJvcGVy
LCBNYXR0aGV3IEQNCj4gPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggdjIgMS8yXSBkcm0vaTkxNS9tdGw6IEV4dGVuZCBXYV8xNjAxNDg5MjExMSB0byBN
VEwgQS0NCj4gc3RlcA0KPiANCj4gUXVvdGluZyBSYWRoYWtyaXNobmEgU3JpcGFkYSAoMjAyMy0w
NS0xMiAyMzoxNDozNykNCj4gPlRoZSBkZzIgd29ya2Fyb3VuZCB3aGljaCBpcyB1c2VkIGZvciBw
ZXJmb3JtYW5jZSB0dW5pbmcNCj4gPmlzIG5lZWRlZCBmb3IgTWV0ZW9ybGFrZSBBLXN0ZXAuDQo+
ID4NCj4gPnYyOiBMaW1pdCB0aGUgV0EgZm9yIEEtc3RlcA0KPiANCj4gSSB0aGluayB3aGF0IE1h
dHQgbWVhbnQgaW4gdGhlIHJldmlldyBmb3IgdjEgd2FzIHRoYXQgdGhpcyBjb21taXQgc2hvdWxk
DQo+IGJlIHJhdGhlciBhYm91dCB0aGUgdHVuaW5nIHNldHRpbmcgcmF0aGVyIHRoYW4gdGhlIHdv
cmthcm91bmQgaXRzZWxmLiBBcw0KPiBzdWNoLCBtYXliZSB3ZSBzaG91bGQgY2hhbmdlIHRoZSBj
b21taXQgbWVzc2FnZSBzbyB0aGF0IGl0IGZvY3VzIG9uIHRoZQ0KPiByZWNvbW1lbmRlZCB0dW5p
bmcgc2V0dGluZywgaS5lLiwgaW5zdGVhZCBvZiAiRXh0ZW5kIFdhXzE2MDE0ODkyMTExIHRvDQo+
IE1UTCBBLXN0ZXAiIGFzIHN1YmplY3QsIHdlIHNob3VsZCB3cml0ZSBzb21ldGhpbmcgbGlrZSAi
QXBwbHkNCj4gcmVjb21tZW5kZWQgdHVuaW5nIHNldHRpbmcgZm9yIC4uLiIgYW5kIGdpdmUgZGV0
YWlscy4NCj4gDQo+IFRoYXQgc2FpZCwgc2luY2Ugd2UgYXJlIGZvY3VzaW5nIG9uIHRoZSB0dW5p
bmcgc2V0dGluZ3MgaGVyZSwgSSBndWVzcw0KPiB0aGlzIGNvdWxkIGJlIHNxdWFzaGVkIHdpdGgg
dGhlIHNlY29uZCBwYXRjaCBhbmQgd2UgY291bGQgYWRkIGEgbm90ZQ0KPiBhYm91dCBEUkFXX1dB
VEVSTUFSSyBuZWVkaW5nIFdhXzE2MDE0ODkyMTExIGZvciBBIHN0ZXBzIG9mIE1UTC4NCg0KVGhl
cmUgYXJlIDIgYXNwZWN0cyB3cnQuIERSQVdfV0FURVJNQVJLLiBPbmUgdGhhdCBpcyBhIHdvcmth
cm91bmQgd2hpY2ggaXMgYXBwbGllZA0Kb24gZWFjaCBjb250ZXh0IHN3aXRjaCBhbmQgaXMgb25s
eSBhcHBsaWNhYmxlIGZvciBERzIgYW5kIE1UTC1BIHN0ZXAgd2hpY2ggaXMgd2hhdCB0aGlzIHBh
dGNoIGRvZXMuDQoNClRoZSBvdGhlciBpcyB0aGUgdHVuaW5nIHBhcmFtZXRlciBzZXR0aW5nIHdo
aWNoIGlzIGFwcGxpY2FibGUgZm9yIGFsbCBvZiBNVEwgd2hpY2ggaXMgYSBvbmV0aW1lIGNvbmZp
Z3VyYXRpb24NCkhhbmRsZWQgYnkgdGhlIG5leHQgcGF0Y2ggZHVyaW5nIGN0eF93b3JrYXJvdW5k
c19pbml0Lg0KDQotIFJhZGhha3Jpc2huYSBTcmlwYWRhDQoNCg0KPiANCj4gLS0NCj4gR3VzdGF2
byBTb3VzYQ0KPiANCj4gPg0KPiA+QnNwZWM6IDY4MzMxDQo+ID5DYzogSGFyaWRoYXIgS2FsdmFs
YSA8aGFyaWRoYXIua2FsdmFsYUBpbnRlbC5jb20+DQo+ID5DYzogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4NCj4gPkNjOiBHdXN0YXZvIFNvdXNhIDxndXN0YXZvLnNvdXNh
QGludGVsLmNvbT4NCj4gPlNpZ25lZC1vZmYtYnk6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRo
YWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQo+ID4tLS0NCj4gPiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyB8IDQgKysrLQ0KPiA+IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMNCj4gPmluZGV4IDgxYTk2YzUyYTkyYi4uOWMxMDA3YzQ0Mjk4IDEwMDY0NA0KPiA+
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMNCj4gPisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jDQo+ID5AQCAtMTM3MCw3ICsxMzcwLDkgQEAg
Z2VuMTJfZW1pdF9pbmRpcmVjdF9jdHhfcmNzKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jb250ZXh0
ICpjZSwgdTMyICpjcykNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY3MsIEdFTjEyX0dGWF9DQ1NfQVVYX05WKTsNCj4gPg0KPiA+ICAgICAgICAgLyog
V2FfMTYwMTQ4OTIxMTEgKi8NCj4gPi0gICAgICAgIGlmIChJU19ERzIoY2UtPmVuZ2luZS0+aTkx
NSkpDQo+ID4rICAgICAgICBpZiAoSVNfREcyKGNlLT5lbmdpbmUtPmk5MTUpIHx8DQo+ID4rICAg
ICAgICAgICAgSVNfTVRMX0dSQVBISUNTX1NURVAoY2UtPmVuZ2luZS0+aTkxNSwgTSwgU1RFUF9B
MCwgU1RFUF9CMCkgfHwNCj4gPisgICAgICAgICAgICBJU19NVExfR1JBUEhJQ1NfU1RFUChjZS0+
ZW5naW5lLT5pOTE1LCBQLCBTVEVQX0EwLCBTVEVQX0IwKSkNCj4gPiAgICAgICAgICAgICAgICAg
Y3MgPSBkZzJfZW1pdF9kcmF3X3dhdGVybWFya19zZXR0aW5nKGNzKTsNCj4gPg0KPiA+ICAgICAg
ICAgcmV0dXJuIGNzOw0KPiA+LS0NCj4gPjIuMzQuMQ0KPiA+DQo=
