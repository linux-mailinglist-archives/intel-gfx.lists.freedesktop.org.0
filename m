Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BE86015A3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 19:46:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E1210E3AE;
	Mon, 17 Oct 2022 17:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6478710E3AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 17:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666028788; x=1697564788;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=moUTyX34p6QHfN0KsFTDVFdCQKT+Dp0nWhn3au46ups=;
 b=F1lE7KPdEF+xgiS2I930d/ysh5Vxm2InxS+cEyNUbsiftKdgxw3rjPMm
 8XB6iMIiu/cxY4418J+8UgsUbDvhMAJcarU4bFuV+sLAUsVfIPUM01RKl
 7n+W6vz2uH+bYSOO6rRCetjOXck1p0HVayUh+BgHB04FrKxNDOitRK/Mi
 uAsa+UsEHTqTq+5WvQIfQqzM7PrkKLI7TQI6ahJZvZ4BgY0YR0RZ2Zg6z
 sDwdRBd33/h7NMmp7G+g3NCOHibM6rj1sUJGT41i3HGHdjCg2Hya5pTJu
 AETCslKAfLpXU3Mq/CBDxta2MgXBdGvHuEZT8cBUjFQX81Ez1WIjJJoq6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="286263852"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="286263852"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 10:46:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="697143810"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="697143810"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 17 Oct 2022 10:46:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 10:46:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 10:46:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 10:46:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 10:46:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lV6dsz5h5Znw5rYc9WrJqAPiA4+saOlPt/v/2BCW1KJywKEr1Ivhsx74O+pquRlqcu7hzOrMnSCmNso1WWE0Yoi1yXcL50JyCM5M7SUlLDa+CugPEHlM1AK7kOao7sKcYl+ZBSFeOdq+qAkhqzBIjJe89ivZnzxtgL0jvmoYf95MOcIgJBY3poJImLsCnej5b3QzfcjP33f4Zqxu/GaGrKOFPfSUaLDdwnYgXRbd6x7KaRvxHjfC4dSlNLNJ0IqnT1bVj2bTjxqZMrbZ9olrNaCk513WD4+Q0SfP4EtLlVlhLdh/Ke1cbmTlzb5e8oYqVUpGW3gmJIQ40PJt9+2YSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=moUTyX34p6QHfN0KsFTDVFdCQKT+Dp0nWhn3au46ups=;
 b=f+esapFV/13DEmgZoK+H0Jr/b3rmuoh7bYsyIhJmkUEOiHYQXJtkPoq3G4gN7UXoAvTYE41a4YR85HZ1qhnoQndOXsZvEVNdp9AsJ9qCXbcCcP+qQ8kAdJ9k+NTsrMiN07H3GwWMyMUzBCaZc0wK69474EfkwBh6M2yxeFpGowl8zSHW2/r+0J4k8jVfASLf+Ron1JIDXZ1Wk8Pl//ax/as/1ERp8hmS8W7df7p/H+kMRQWgGTFbV5J3kk5x00fqv/MnRXdRYMlMA8lk/62BTW9GQzl+WSwxiE/THc8a9L9oy2ch6PKzpWsEldDNAJrca3PY/C22b4JbY/62YRD9zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH7PR11MB5982.namprd11.prod.outlook.com (2603:10b6:510:1e1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Mon, 17 Oct
 2022 17:46:24 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 17:46:24 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
Thread-Index: AQHY4Epaf0zuGaT42kWe0ZuMvmrykK4SSEGAgACYgYA=
Date: Mon, 17 Oct 2022 17:46:24 +0000
Message-ID: <0c41d33552a0cc52c3835be99ce2e0e50a9084af.camel@intel.com>
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
 <20221015035952.1741319-2-alan.previn.teres.alexis@intel.com>
 <e02ac836-89f4-1734-eacc-73f49ecda323@linux.intel.com>
In-Reply-To: <e02ac836-89f4-1734-eacc-73f49ecda323@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH7PR11MB5982:EE_
x-ms-office365-filtering-correlation-id: da477988-1d2a-4d43-1382-08dab0678279
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PeDArAcLaesrWOF39GJl+tdrqmWdXjWFCrLqYmjHxHUMpkiZF2AVM5mvyxWFQrx8lu7t5bJxmRpqEWQ4gg60y2iNFkN3l/0zElZm8pU+iHd8fAvw762g7F3+9wajtZz6QVCWPWJ/0ffo5i0llQf4WB2ue3VY/um5KlQsUTcvzs4SWBV4HRHRQUxRq3t0xF4kzyOiEsGj5fGZaSzNSqrVmqbNjTU85mkePlxVvEl0qSbJ+X1kMLS4tXI/N19otsAzlf6GzZ43LG5YQvvvOIag5SQxHvh7UBtWOpM1lih+3wXv4QzAubz9x5v8of1+6DX/O9L6Wa/Gg7c7+ttH1nbPTnMD+jPzrOH3/X31vPS/GYDdDBZtZGipwCITB/2zD1sCnDP9+VUly9O0nfvhcjuhQfWJOKoIo9fwrVQyPjDlwKsWfRYjWujgSsJj03nUkU6YYT7wOnHmR+jKgCxv6kEVK3wPzNJtj4SEsK6A3MU5CUOSG4VubrFZe5GATmdLkiV/2AsFmAjo5b3/4GRnyDj0y1rJs4Up50GRYE0zovXQM9DtY9Rs/xKX1ZBx005bDuBjKh0l0LW4zJDR5agji/VffutNk1HhZSRwBIOaCR8b+sRTSr5baSUPKurJUYPb1VbWJ9RFrdU/0X5JrFdYUmJfYweI2AWZjUDgyUMXkWrQ4UGiQGswPJrJiZo+6q3dcZzP1acRcyM/DINkiRCzR+oVJlGxADRUJ4mrBsm791YUhBubgunGVy57w4w50Wq2QTQYGoBDiWrXGMHvTRJ3weKA/g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(39860400002)(366004)(136003)(396003)(451199015)(53546011)(2906002)(6512007)(6506007)(41300700001)(36756003)(83380400001)(26005)(8936002)(186003)(5660300002)(4001150100001)(2616005)(38070700005)(38100700002)(86362001)(82960400001)(122000001)(316002)(110136005)(64756008)(66446008)(66476007)(66556008)(478600001)(6486002)(71200400001)(76116006)(66946007)(91956017)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dVBNTERYUTVVZFRZb3N5MjJLN2xaajQ1R0NMOXJVLzF5dklya0lXcHVUOHFQ?=
 =?utf-8?B?OHVucTZmOG9OZHdvTUZyOWJFcmFYUXVGNTlRS2dwZGZma3lNWWZGYTZNcEdt?=
 =?utf-8?B?MERzQVFsUFhWdDNPYlpzQk1wcWMwL29TR1VOdUdDM2hpbzNmNDZ4dDdiU240?=
 =?utf-8?B?UmhpK0lNWERtZHpsdFNTdUhSVi81S1dPY096NjY5R0t4a3VFTHVLSE5WRHM4?=
 =?utf-8?B?clNOUnEzbVBjOWFDZHBmTTBuZjI4QjV0NmN0ZlduQ1RRdlpoL0ZzU0owVU5L?=
 =?utf-8?B?ZWt6YXREeFpEdUdlV09odFFQdk12Ulg5NnRUZTBhNnZpRFkzUXJrTkEweWVR?=
 =?utf-8?B?dmVrZk51NUhjVk12MnVFWlA2aC95OGtXUFpzY1RIdHVEL0hCRG9GT1R3VVF5?=
 =?utf-8?B?WUhiNnBwTDBGZ01tbjBBTWlPOGo2VTZEQkozVzl6bkkzYWVKZkxpNllRcCs0?=
 =?utf-8?B?bGlVZ0phaEkxR3NPcHdUTGc4L2ZiZlJTK2ppOHFWUFh5UmxRWm5YSU9zNE9V?=
 =?utf-8?B?SlZMczhmY0xJSWorSStkcVluYWdSR0MrUGxNaXVUa1F2N0Q4ZWFBaUNFOTds?=
 =?utf-8?B?L0RzdTFKK1A2YXJ4SENhM1plZG92QVFrekx5VHM1RHk3RFlsYndPdVNBMzRU?=
 =?utf-8?B?QllYNkE2QUxBUWZhbEFXdUJ0MG04ejBzSDAxRGFZSC9jblpYa0M4allZdnhw?=
 =?utf-8?B?YTZ6S3NFaFFIR0xNRWFpU0VZbnRkYURHTXNWby95YTdheW41VFNVMkRxRGo0?=
 =?utf-8?B?OUNINkV1UkZLV1NiUExBMHFZR250Umk5eXE4bGVjZ3M5L0JKc3h4dHVtMUNj?=
 =?utf-8?B?WC9heWowcVR6OUpPblZqa1BTTi9UYldCcGs5VWJ6bVBrNmRPQ09xN0k3alV4?=
 =?utf-8?B?WERqK1VPT0NldE1PS1dxR1BZYmQ4NXVENlFaWXJmTjhEWDYxSFBkeTUyWkpm?=
 =?utf-8?B?MkJ3TGM1NWE5ME1xMWtuUVdWWmZtS0tqa2ZBc09nUWRibVh2UERUbmRrT2lE?=
 =?utf-8?B?eTNoWCswWlJPN2hQYlNZZXoxM3NXQ3FIT0pxSlcvcDNFdkJnU3pxV0FFOFF6?=
 =?utf-8?B?YWN6ZDFhbnRrWHBERlkvZ3VsVm5FMUVmS0dxSldEaTlzaEZRbHlCQVc2UVFH?=
 =?utf-8?B?VWt1akNLdjQ0c3hQZFphZmZrY1RPTHhSUFlKd1FyakJaYTZoeWxzaHl6WE1r?=
 =?utf-8?B?cWp6OUtVT3dTRDkvR1RQN3VzWWhobWZaajR6QWRyOGxZdWh5L2lvcDdyWjMx?=
 =?utf-8?B?MzNBcHMrL05yemNkOHNZNmtaWXIzZWFGVFNXa3RDQjBSek05VmlnM2ptYnF2?=
 =?utf-8?B?cUxYS0w0U1QyaWlScWxWQXIwYWtFY2FlUytiVFJBZlZuTXlSZFJ4cHRoL3RT?=
 =?utf-8?B?d2g0SFpFVzcwMGxTbGZZaFZBd2JnMHBBR0EwQk81NEY0cXFkckFQY0U0cXAz?=
 =?utf-8?B?UnlZMS9yR1J3L2FtaHI4MmhNTUNvQkU3V1ZlYjB4dm9HMDhsOFlpMHBOdXpG?=
 =?utf-8?B?T2hWdWJCQWJmMndzaVNOYjduUG9NZ25sQTRIbTZiSmJoNTFNNnp3NERoOHZU?=
 =?utf-8?B?cU9YdWN5Q0NTVExTMmxTRFRRVThxUzNoQUw3NGRpTzBBUXVTMXhiVWVlaHF0?=
 =?utf-8?B?SGdtNTZLbUEzOTdjUmx3SkgrRUErT0dGRDVNbzlOU3REWkdNTGNWTnAvb1li?=
 =?utf-8?B?M0drVTZyQzFvTkhKdE1FY2d3azF2b3hzY2phN01WS1ptZ2o5SGphRTJCQkti?=
 =?utf-8?B?RTVxbzNVb2lFdCtIeFdtbU8rS2FRRkJhMzJGTWVjb1hIZkZGT2NnTGRSNVVC?=
 =?utf-8?B?d1hFWFhBemlGWG81YXB2L0QxSGhJamx0Q3ZhaGRFUlBKZnhhY1VQcEdVYVcw?=
 =?utf-8?B?SmI2c3M3MG14cWJ2Y2FTSW5PVU9EZHE3ZXNJZ3V1TUdHYUU1aWtDa3owd0F1?=
 =?utf-8?B?aTZEZ3NEQjdSL2NORVE5UGhvY3ExYTlyTXZYSURnT3hnbGlMMGFRZDRtNFlk?=
 =?utf-8?B?YUNjcEE0SzBQVys0ZEplanVucFk2K2RkaW14TXVxd1B2VHFGREFybnhnZWFR?=
 =?utf-8?B?ZXJCMDkzczJCZjY5SEl0aWFyZWU5UE1KamlNcDlZVWM4Sk8wZElkS0JTZ0x1?=
 =?utf-8?B?bE1NSzJOSnM1NnlYU3p5TzlacHU1dlo0RmJQNVIyTzZqOHhmZkNMNGd2aGoz?=
 =?utf-8?Q?AotI5d9rq3AkLGlTD1xlzdM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <57709CB071F9014DA02863271C3DA44D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da477988-1d2a-4d43-1382-08dab0678279
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2022 17:46:24.3282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eZJgRyykSQ5+hLEf9/QPUCtR2Ib4k08sL/ubuxbhtIWg4ASs+YzFQJQoVg9/owoapsr06u//xGUeI+nxvoGKT34z5/XTxyV3Y4kQNKFqttX/2bUAwRxxUBix5BH3cYbd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5982
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
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

DQoNCk9uIE1vbiwgMjAyMi0xMC0xNyBhdCAwOTo0MiArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3Jv
dGU6DQo+IE9uIDE1LzEwLzIwMjIgMDQ6NTksIEFsYW4gUHJldmluIHdyb3RlOg0KPiA+IElmIEd1
QyBpcyBiZWluZyB1c2VkIGFuZCB3ZSBpbml0aWFsaXplZCBHdUMtZXJyb3ItY2FwdHVyZSwNCj4g
PiB3ZSBuZWVkIHRvIGJlIHdhcm5pbmcgaWYgd2UgZG9uJ3QgcHJvdmlkZSBhbiBlcnJvci1jYXB0
dXJlDQo+ID4gcmVnaXN0ZXIgbGlzdCBpbiB0aGUgZmlybXdhcmUgQURTLCBmb3IgdmFsaWQgR1Qg
ZW5naW5lcy4NCj4gPiBBIHdhcm5pbmcgbWFrZXMgc2Vuc2UgYXMgdGhpcyB3b3VsZCBpbXBhY3Qg
ZGVidWdhYmlsaXR5DQo+ID4gd2l0aG91dCByZWFsaXppbmcgd2h5IGEgcmVnbGlzdCB3YXNuJ3Qg
cmV0cmlldmVkIGFuZCByZXBvcnRlZA0KPiA+IGJ5IEd1Qy4+IA0KPiA+IEhvd2V2ZXIsIGRlcGVu
ZGluZyBvbiB0aGUgcGxhdGZvcm0sIHdlIG1pZ2h0IGhhdmUgY2VydGFpbg0KPiA+IGVuZ2luZXMg
dGhhdCBoYXZlIGEgcmVnaXN0ZXIgbGlzdCBmb3IgZW5naW5lIGluc3RhbmNlIGVycm9yIHN0YXRl
DQo+ID4gYnV0IG5vdCBmb3IgZW5naW5lIGNsYXNzLiBUaHVzLCBhZGQgYSBjaGVjayBvbmx5IHRv
IHdhcm4gaWYgdGhlDQo+ID4gcmVnaXN0ZXIgbGlzdCB3YXMgbm9uIGV4aXN0ZW50IHZzIGFuIGVt
cHR5IGxpc3QgKHVzZSB0aGUNCj4gPiBlbXB0eSBsaXN0cyB0byBza2lwIHRoZSB3YXJuaW5nKS4N
Cj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMu
YWxleGlzQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIC4uLi9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjX2NhcHR1cmUuYyAgICB8IDU1ICsrKysrKysrKysrKysrKysrKy0NCj4gPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVy
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2NhcHR1cmUuYw0KPiA+
IGluZGV4IDhmMTE2NTE0NjAxMy4uMjkwYzFlMTM0M2RkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5jDQo+ID4gQEAgLTQxOSw2
ICs0MTksNDQgQEAgZ3VjX2NhcHR1cmVfZ2V0X2RldmljZV9yZWdsaXN0KHN0cnVjdCBpbnRlbF9n
dWMgKmd1YykNCj4gPiAgIAlyZXR1cm4gZGVmYXVsdF9saXN0czsNCj4gPiAgIH0NCj4gPiAgIA0K
PiA+ICtzdGF0aWMgY29uc3QgY2hhciAqDQo+ID4gK19fc3RyaW5naWZ5X3R5cGUodTMyIHR5cGUp
DQo+ID4gK3sNCj4gPiArCXN3aXRjaCAodHlwZSkgew0KPiA+ICsJY2FzZSBHVUNfQ0FQVFVSRV9M
SVNUX1RZUEVfR0xPQkFMOg0KPiA+ICsJCXJldHVybiAiR2xvYmFsIjsNCj4gPiArCWNhc2UgR1VD
X0NBUFRVUkVfTElTVF9UWVBFX0VOR0lORV9DTEFTUzoNCj4gPiArCQlyZXR1cm4gIkNsYXNzIjsN
Cj4gPiArCWNhc2UgR1VDX0NBUFRVUkVfTElTVF9UWVBFX0VOR0lORV9JTlNUQU5DRToNCj4gPiAr
CQlyZXR1cm4gIkluc3RhbmNlIjsNCj4gPiArCWRlZmF1bHQ6DQo+ID4gKwkJcmV0dXJuICJ1bmtu
b3duIjsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlyZXR1cm4gIiI7DQo+IA0KPiBXaGF0J3MgdGhl
IHBvaW50IG9mIHRoZXNlIHJldHVybnM/IEdjYyBjb21wbGFpbnMgYWJvdXQgbm90IHJldHVybmlu
ZyBhIHR5cGUgZnJvbSBjb25zdCBjaGFyICogcmV0dXJuIGZ1bmN0aW9uPw0KPiANClNvcnJ5IGkg
YW0gbm90IHN1cmUgSSBzYXcgYW55IGNvbXBsYWluIGZvciBHY2MuIElmIHlvdSBhcmUgcmVmZXJy
aW5nIHRvICIiIHRoZW4gaSBjYW4gcmUtcmV2IHdpdGhvdXQgdGhlIGRlZmF1bHQgYW5kDQpqdXN0
IGxldCB0aGUgcGF0aCBvdXRzaWRlIHJldHVybiB0aGUgdW5rbm93bi4gSXMgdGhhdCB3aGF0IHlv
dSBhcmUgcmVmZXJyaW5nIHRvPw0KDQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBjb25zdCBj
aGFyICoNCj4gPiArX19zdHJpbmdpZnlfZW5nY2xhc3ModTMyIGNsYXNzKQ0KPiA+ICt7DQo+ID4g
Kwlzd2l0Y2ggKGNsYXNzKSB7DQo+ID4gKwljYXNlIEdVQ19SRU5ERVJfQ0xBU1M6DQo+ID4gKwkJ
cmV0dXJuICJSZW5kZXIiOw0KPiA+ICsJY2FzZSBHVUNfVklERU9fQ0xBU1M6DQo+ID4gKwkJcmV0
dXJuICJWaWRlbyI7DQo+ID4gKwljYXNlIEdVQ19WSURFT0VOSEFOQ0VfQ0xBU1M6DQo+ID4gKwkJ
cmV0dXJuICJWaWRlb0VuaGFuY2UiOw0KPiA+ICsJY2FzZSBHVUNfQkxJVFRFUl9DTEFTUzoNCj4g
PiArCQlyZXR1cm4gIkJsaXR0ZXIiOw0KPiA+ICsJY2FzZSBHVUNfQ09NUFVURV9DTEFTUzoNCj4g
PiArCQlyZXR1cm4gIkNvbXB1dGUiOw0KPiA+ICsJZGVmYXVsdDoNCj4gPiArCQlyZXR1cm4gInVu
a25vd24iOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCXJldHVybiAiIjsNCj4gPiArfQ0KPiA+ICsN
Cj4gPiAgIHN0YXRpYyBpbnQNCj4gPiAgIGd1Y19jYXB0dXJlX2xpc3RfaW5pdChzdHJ1Y3QgaW50
ZWxfZ3VjICpndWMsIHUzMiBvd25lciwgdTMyIHR5cGUsIHUzMiBjbGFzc2lkLA0KPiA+ICAgCQkg
ICAgICBzdHJ1Y3QgZ3VjX21taW9fcmVnICpwdHIsIHUxNiBudW1fZW50cmllcykNCj4gPiBAQCAt
NDg3LDE5ICs1MjUsMzIgQEAgaW50ZWxfZ3VjX2NhcHR1cmVfZ2V0bGlzdHNpemUoc3RydWN0IGlu
dGVsX2d1YyAqZ3VjLCB1MzIgb3duZXIsIHUzMiB0eXBlLCB1MzIgY2wNCj4gPiAgIAkJCSAgICAg
IHNpemVfdCAqc2l6ZSkNCj4gPiAgIHsNCj4gPiAgIAlzdHJ1Y3QgaW50ZWxfZ3VjX3N0YXRlX2Nh
cHR1cmUgKmdjID0gZ3VjLT5jYXB0dXJlOw0KPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSBndWNfdG9fZ3QoZ3VjKS0+aTkxNTsNCj4gPiAgIAlzdHJ1Y3QgX19ndWNfY2FwdHVy
ZV9hZHNfY2FjaGUgKmNhY2hlID0gJmdjLT5hZHNfY2FjaGVbb3duZXJdW3R5cGVdW2NsYXNzaWRd
Ow0KPiA+ICAgCWludCBudW1fcmVnczsNCj4gPiAgIA0KPiA+IC0JaWYgKCFnYy0+cmVnbGlzdHMp
DQo+ID4gKwlpZiAoIWdjLT5yZWdsaXN0cykgew0KPiA+ICsJCWRybV93YXJuKCZpOTE1LT5kcm0s
ICJHdUMtY2FwdHVyZTogTm8gcmVnbGlzdCBvbiB0aGlzIGRldmljZVxuIik7DQo+ID4gICAJCXJl
dHVybiAtRU5PREVWOw0KPiA+ICsJfQ0KPiA+ICAgDQo+ID4gICAJaWYgKGNhY2hlLT5pc192YWxp
ZCkgew0KPiA+ICAgCQkqc2l6ZSA9IGNhY2hlLT5zaXplOw0KPiA+ICAgCQlyZXR1cm4gY2FjaGUt
PnN0YXR1czsNCj4gPiAgIAl9DQo+ID4gICANCj4gPiArCWlmICghZ3VjX2NhcHR1cmVfZ2V0X29u
ZV9saXN0KGdjLT5yZWdsaXN0cywgb3duZXIsIHR5cGUsIGNsYXNzaWQpKSB7DQo+ID4gKwkJaWYg
KG93bmVyID09IEdVQ19DQVBUVVJFX0xJU1RfSU5ERVhfUEYgJiYgdHlwZSA9PSBHVUNfQ0FQVFVS
RV9MSVNUX1RZUEVfR0xPQkFMKQ0KPiA+ICsJCQlkcm1fd2FybigmaTkxNS0+ZHJtLCAiR3VDLWNh
cHR1cmU6IG1pc3NpbmcgcmVnbGlzdCB0eXBlLUdsb2JhbFxuIik7DQo+ID4gKwkJaWYgKG93bmVy
ID09IEdVQ19DQVBUVVJFX0xJU1RfSU5ERVhfUEYpDQo+IA0KPiBHVUNfQ0FQVFVSRV9MSVNUX0lO
REVYX1BGIGNvdWxkIGJlIG1hZGUgb25jZSBvbiB0aGUgZW5jbG9zaW5nIGlmIHN0YXRlbWVudD8N
ClN1cmUgLSB3aWxsIGRvLg0KPiANCj4gQnR3IHdoYXQncyB3aXRoIHRoZSBQRiBhbmQgVkYgKGNv
dmVyIGxldHRlcikgcmVmZXJlbmNlcyB3aGlsZSBTUklPViBkb2VzIG5vdCBleGlzdHMgdXBzdHJl
YW0/DQpUbyBtYWludGFpbiBhIHNjYWxhYmxlIGNvZGUgZmxvdyBhY3Jvc3MgYm90aCB0aGUgQURT
IGNvZGUgYW5kIGd1Yy1lcnJvci1jYXB0dXJlIGNvZGUsIHdlIGRvIGhhdmUgdG8gc2tpcCBvdmVy
IHRoaXMgZW51bQ0KZWxzZSB3ZSdsbCBlbmNvdW50ZXIgbG90cyBvZiB3YXJuaW5ncyBhYm91dCBt
aXNzaW5nIFZGLXJlZ2xpc3Qgc3VwcG9ydCAod2hpY2ggd2UgY2FudCBjaGVjayBmb3Igc2luY2Ug
d2UgZG9udCBldmVuIGhhdmUNCnN1cHBvcnQgLSBpLmUgd2UgZG9udCBldmVuIGhhdmUgYSAiaXMg
bm90IHN1cHBvcnRlZCIgY2hlY2spIGJ1dCB0aGUgR3VDIGZpcm13YXJlIEFEUyBidWZmZXIgYWxs
b2NhdGlvbiBpbmNsdWRlcyBhbiBlbnRyeQ0KZm9yIFZGcyBzbyB3ZSBoYXZlIHRvIHNraXAgb3Zl
ciBpdC4gVGhpcyBpcyB0aGUgY2xlYW5lc3Qgd2F5IGkgY2FuIHRoaW5rIG9mIHdpdGhvdXQgaW1w
YWN0aW5nIG90aGVyIGNvZGUgYXJlYXMgYW5kIGFsc28NCndoaWxlIGFkZGluZyB0aGUgYWJpbGl0
eSB0byB3YXJuIHdoZW4gaXRzIGltcG9ydGFudC4NCj4gPiArCQkJZHJtX3dhcm4oJmk5MTUtPmRy
bSwgIkd1Qy1jYXB0dXJlOiBtaXNzaW5nIHJlZ2lpc3QgdHlwZSglZCktJXMgOiAiDQo+IA0KPiBy
ZWdsaXN0DQp0aGFua3MgLSB3aWxsIGZpeA0KPiANCj4gPiArCQkJCSAiJXMoJWQpLUVuZ2luZVxu
IiwgdHlwZSwgX19zdHJpbmdpZnlfdHlwZSh0eXBlKSwNCj4gPiArCQkJCSBfX3N0cmluZ2lmeV9l
bmdjbGFzcyhjbGFzc2lkKSwgY2xhc3NpZCk7DQo+IA0KPiBPbmUgZGV0YWlscyB0byBjb25zaWRl
ciBmcm9tIERvY3VtZW50YXRpb24vcHJvY2Vzcy9jb2Rpbmctc3R5bGUucnN0DQo+ICIiIg0KPiBI
b3dldmVyLCBuZXZlciBicmVhayB1c2VyLXZpc2libGUgc3RyaW5ncyBzdWNoIGFzIHByaW50ayBt
ZXNzYWdlcyBiZWNhdXNlIHRoYXQgYnJlYWtzIHRoZSBhYmlsaXR5IHRvIGdyZXAgZm9yIHRoZW0u
DQo+ICIiIg0KPiANCkkgdG90YWxseSBhZ3JlZSB3aXRoIHlvdSBidXQgaSBjYW50IGZpbmQgYSB3
YXkgdG8ga2VlcCB0b3RhbGx5IGdyZXAtYWJsZSB3YXkgd2l0aG91dCBjcmVhdGluZyBhIHdob2xl
IHNldCBvZiBlcnJvcg0Kc3RyaW5ncyBmb3IgdGhlIHZhcmlvdXMgbGlzdC10eXBlcywgbGlzdC1v
d25lcnMgYW5kIGNsYXNzLXR5cGVzLiBIb3dldmVyIGkgZGlkIGVuc3VyZSB0aGUgZmlyc3QgcGFy
dCBvZiB0aGUgbWVzc2FnZQ0KaXMgZ3JlcC1hYmxlIDogIkd1Qy1jYXB0dXJlOiBtaXNzaW5nIHJl
Z2xpc3QgdHlwZSIuIERvIHlvdSBhbiBhbHRlcm5hdGl2ZSBwcm9wb3NhbD8NCg0KPiBBbHNvIGNv
bW1pdCBtZXNzYWdlIHlvdSBjYW4gYWltIHRvIHdyYXAgYXQgNzUgY2hhcnMgYXMgcGVyIHN1Ym1p
dHRpbmctcGF0Y2hlcy5yc3QuDQo+IA0KPiA+ICsJCXJldHVybiAtRU5PREFUQTsNCj4gDQo+IElz
IHRoaXMgYSBuZXcgZXhpdCBjb25kaXRpb24gb3IgdGhlIHRoaW5nIHdvdWxkIGV4aXQgb24gdGhl
ICFudW1fcmVncyBjaGVjayBiZWxvdyBhbnl3YXk/IEp1c3Qgd29uZGVyaW5nIGlmIHRoZSBzZXJp
ZXMgaXMgb25seSBhYm91dCBsb2dnaW5nIGNoYW5nZXMgb3IgdGhlcmUgaXMgbW9yZSB0byBpdC4N
Ckl0cyBubyBkaWZmZXJlbnQgZnJvbSBwcmV2aW91cyBiZWhhdmlvciAtIGFuZCB5ZXMgaXRzIGFi
b3V0IGxvZ2dpbmcgdGhlIG1pc3NpbmcgcmVnIGxpc3RzIGZvciBodyB0aGF0IG5lZWRzIGl0IGFz
IHdlIGFyZQ0KbWlzc2luZyB0aGlzIGZvciBERzIgd2Ugd2UgZGlkbid0IG5vdGljZSAod2UgZGlk
IGEgcHJldmlvdXMgcmV2ZXJ0IHRvIHJlbW92ZSB0aGVzZSB3YXJuaW5ncyBidXQgdGhhdCB0aW1l
IHRoZSB3YXJuaW5ncw0Kd2FzIHRvbyB2ZXJib3NlIC0gZXZlbiBjb21wbGFpbmluZyBmb3IgdGhl
IGludGVudGlvbmFsIGVtcHR5IGxpc3RzIGFuZCBmb3IgVkYgY2FzZXMgdGhhdCBpc250IHN1cHBv
cnRlZCkuDQo+IA0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAgIAludW1fcmVncyA9IGd1Y19jYXBfbGlz
dF9udW1fcmVncyhnYywgb3duZXIsIHR5cGUsIGNsYXNzaWQpOw0KPiA+IC0JaWYgKCFudW1fcmVn
cykNCj4gPiArCWlmICghbnVtX3JlZ3MpIC8qIGludGVudGlvbmFsIGVtcHR5IGxpc3RzIGNhbiBl
eGlzdCBkZXBlbmRpbmcgb24gaHcgY29uZmlnICovDQo+ID4gICAJCXJldHVybiAtRU5PREFUQTsN
Cj4gPiAgIA0KPiA+ICAgCSpzaXplID0gUEFHRV9BTElHTigoc2l6ZW9mKHN0cnVjdCBndWNfZGVi
dWdfY2FwdHVyZV9saXN0KSkgKw0KPiANCj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KDQo=
