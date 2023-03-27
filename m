Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB10E6CA36D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 14:16:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E66D10E57D;
	Mon, 27 Mar 2023 12:16:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C69410E583
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 12:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679919363; x=1711455363;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QCaJ5UTm5+FRpLkJuM74L4AUkaU1tzxWhhpl2AtRUuU=;
 b=MY/GwL3QD9SrNlncpl/qTdmL/UnMOnloSubrCG6XK3hYjwOCbZaeV6vV
 NPAq5UzHtCRlogZ5h2yIPYWlRVFczF/i35jCmW7NYn28/ZhMr1b4QZO4c
 f8dwEPwoe2DPa/DQ7z+s5m4dkJSuQudk8nLpXxK/cbOHszfr6NoV+J/EU
 sM8QvxJftvXAas08xFSssFsxA4mw2nZmdBVTRs+U1nLm7HpUVxj5OSdZs
 XrDxczK+TP1bHLo48GndDnBWTc9D6XY/54djqfyjOFZN6F0NhuhnxH0t9
 4ptQrazJeM5PM9xvcXF9oIfgU5ShlPdKMTovFRl2ywDJqxFpJP8Zl5Da5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="367995968"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="367995968"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 05:16:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="716060828"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="716060828"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 27 Mar 2023 05:16:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 05:16:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 05:16:01 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 05:16:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WMv6vlwmMWiq1zlmR1ArU28KvcA/1tLo1H5hSDhUA08ZfFFnNxsnEhREY+Gg3tfOSY9HNpEcPAWcmpW2Vd5QiXzKL4fmD72Yf1x8xvbbVv8NSgZexLBTx6b4JuJbsr3/Il/tKvFcxG9nBK3jZ7dbAf+DACkPPTWd8bYWkeQ16FuDjKizZFwBe4Z7WZP7AITV41Cr4ed0McX6X5zn/2CqRZbfSGrRfFzep/IxFZyE+XKDYX1K6tXiK84DqRcce+5Z6Ywp89k9J8nCv4ShO6Z8myMOFFn4BAnuIv/+K4a+dn1fF8x/wvZBS4+G+eOLAwibl6vJs6wmjQzLJEzxeayOPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QCaJ5UTm5+FRpLkJuM74L4AUkaU1tzxWhhpl2AtRUuU=;
 b=j78+UohIWWwqvSP7ybODF4KayvfgOLGm6+bQ7Twt9wyWx0KSGNPNczc8xmh2k9xx0g5s1nXAWW3KF5eYRTh5WBU9HijWdCJstm+rcbBTwRfk5Byov4+2p/kgqg0e3wgdgqS/Hf0P6g1SxDdX423osBtOiTX3QaV/Vbs2KLQdzmSF5HcIS0T93LfQk//LtnGVvwVpf0z+IOH6X7VyQ28TllIzBDEpVkxKVRytPGQpOKUKfFcmSCjxMvXAx5y9KRNCOJtJ6iNN9IzZhbEJoNReDk8DR7er5a88j18xOdOTVZOXQ0JZqsSY0TO8O6ML6v+fAOapNRV7QeKGf78GcGrXcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SN7PR11MB7638.namprd11.prod.outlook.com (2603:10b6:806:34b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Mon, 27 Mar
 2023 12:15:59 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 12:15:59 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 22/29] drm/i915/adlp/tc: Use the DE HPD ISR
 register for hotplug detection
Thread-Index: AQHZXZLGEB8oIkpV5ESQQyz+tV/D0K8OkI1g
Date: Mon, 27 Mar 2023 12:15:59 +0000
Message-ID: <MW4PR11MB705428A44AAED59C92AECBA4EF8B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-23-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-23-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SN7PR11MB7638:EE_
x-ms-office365-filtering-correlation-id: 3b526e50-0dda-4a00-b0a5-08db2ebd0636
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kmfmc2GcgyILB7Wsu2PmjyAEegV+LfAYGMIZu5Oip6K6FApAnOqx1GZpQR6FVPIpgRGNc3wkMnWYvjAkYlJPyjuh4HqKAvOV8qUZ7O49Wf00lNKRFZwVQeJbbMbuqVIVdY5VhXFyHj3HSIA7qBuET2XTEdAU+908xejipD5HbGpAu+LAoT1QZkH6iqAc59aBSOezlQoqA6ztoAxpBjUe/mthZZsF9RdXTjLvA6sWWvz7xn3HsQVeVIOpafBFjyRjfBsB/qW50NTyrscITFxqyOas8yKbZns4eHNC5XV9iOKQnszG8G/Qi4FwNah9zcQC1qgRGDnqh7+d0BtWq0GkJdfd+OSMgafQSCsPCZXR30ds60voHey1uqiEPPncowPX8iUhSy8LZIwboHePTIHeAunO/4UUt9Lw/C3l/GFZxhzJXaMjcTNXgkGsxy8qG7uBcJJEBMRuuLA8et3eDEaDMaU32OqWwzKSpEWK77tOKxbbFINJ8EUsHH4HU+CvDa3HVrdjHJFK8uicRwC4h6Fif3Vf7pGFD9gSkn1m2bsgGg4Z4Ucu+Zpv9+9jHBiZdRAGBpiQuXPjjcYrOhEaHVF1Vc40oUE8Q5POaXNu1VArt5ki1r0oMPvo0khxmmYaVD8x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(39860400002)(346002)(396003)(376002)(451199021)(8676002)(41300700001)(186003)(66446008)(66476007)(76116006)(64756008)(55016003)(66556008)(110136005)(316002)(478600001)(26005)(8936002)(9686003)(66946007)(53546011)(71200400001)(83380400001)(122000001)(38070700005)(82960400001)(6506007)(52536014)(5660300002)(7696005)(2906002)(38100700002)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0VMYWFlMzl4cXpUM1hiWFplc0thK3lYVlJaMUpoeDMyOEFLUkNQSjlKancy?=
 =?utf-8?B?TFNPRk1IZnh2WTVCT0R0NjJUditEb3ZSNE94YkNuNzlZSTFPQVVtMVZyT2dq?=
 =?utf-8?B?ZlN6T1Brd1djVTIrN1hUd0NYNmtuTm4zQUZaK0N3K3p3cy9sUVg4aklSRC8r?=
 =?utf-8?B?Z3FsQk5hZ1NTRVhKQVUzbTNTUmVNTjVpNS9qWmtMSGpBMGoxaUlhQnNGVmhV?=
 =?utf-8?B?TDdKWkphRXpJM1RQT1Z3M1JVS09PM3g4dytEd2RCcEcxR01kZ3NkZWw5OStZ?=
 =?utf-8?B?NS8xOE1zR0UrYmVOeFFuQzY4aW5hbVg2YzZlYTZHNk1PbjhWUG5FU0k5N2Nl?=
 =?utf-8?B?WUtGc2tnTDd1cjhjdWlCOXJoK1pjcnI5VmR2RjY4eUVEN1A2aGx1d053eUJI?=
 =?utf-8?B?ajRuVjJiTkRNa2lPb1Q3Zmd5cTF4NVRtOXZtM3V3cVZVMUFKYWNGMUliejJl?=
 =?utf-8?B?OUFtTWNiUzlOOEpHN2lOSGs5NU9zaEpaQXg2YmJ1YkNrRTVWS0xGTk9TSzFF?=
 =?utf-8?B?ZUZicTBKUGl6a0VtRGJ0Vnh6MWE2NGRXMjVSVkRoQmx0dGQ4eDhxYSt5VDFi?=
 =?utf-8?B?L1U2SWNDODhERGRHTE1BWmxZMmdVNEF5QWRoWDVxaEVQRFdlNncydjE1Z3V5?=
 =?utf-8?B?UEI0ekxTeUdkamNNM0ZuNWRZMlYzSGhVRmtpYWlPOGtJZXNGZmZMYi8wcWxE?=
 =?utf-8?B?TXBQK1BoM01IS3NZOXg0YjFCdmRUMG9NZWdldnMrQ2c5WnV0dXRBekdTdGdo?=
 =?utf-8?B?a1dRMVdUMDMzZXNJeTRmWGpMamJ3alNEQlFMOTUwd3diVVQ4bmJ3cWtsRlA4?=
 =?utf-8?B?ckFaMXdtL0Z5ZzdRcHRZMjhRMmZMUDdVQlZuUStBRlNoeHNhNjMvSEJJVEZn?=
 =?utf-8?B?UlZ2WnhGekcwaVV0Wkc3OWNZRmlNb1NFUWpibFRMT2JSMEwvMTdIS2t1aERm?=
 =?utf-8?B?ZGc5Q3k0bFRKMTlyM0MxNEFsQU15QVozVXdsek5qUmZ4NUlqY0FjdkpQUXFV?=
 =?utf-8?B?RHhMN0xPSGhEdldML3UxQXA1VUw2MWg5N24yZVMyeXRYd0NKZmJpbFNQM1hB?=
 =?utf-8?B?NExpMU1VVzFobm5HbW9FVC91ZWxzQlBueXlqWWZ0cDB6aW1mdHJkZnFmOHdh?=
 =?utf-8?B?RjA2V0xBVm9UY09USnM4UUJIT2U3UnUxZUdFOTNIQmhlUmRVclh5UmxBdDB0?=
 =?utf-8?B?YSszR2g5anR3S21XYmVaYkY3UWppYkFRb0RqcC9ONmttcmVQQXhheGhGYjcy?=
 =?utf-8?B?QzdUWFIwVmlzcUtKWFh4Z3lzeDByamhoRWJYQnlRR0NjMUNVeThhTzJtandQ?=
 =?utf-8?B?dUE4MWlhNHFLaFJDQ3lOV29hZ0pGVnduSEEyckE3bG5yUTB5T0w3WFhpcHA4?=
 =?utf-8?B?TWZoanU3STNUR1BXdFlHTnZsNSttTU9TZHN4dUpIaDhkeU5taUMrODEraW9C?=
 =?utf-8?B?UFZwbFdDRDE2b0NRNFNwcWZHVTlRa3RzNzFtcGZIb20xZ1lWeXR4RitYQUhr?=
 =?utf-8?B?bkhob1RaNnQ4eStNeWlOYkZYR0Z3UE5Jc3pOVHI3TFEzVGJtZkVGcXA4K3Vk?=
 =?utf-8?B?RTBGbjNOSjVWVmd5Vkc3MkhKOUVhWTlQdCszdXkxY2Zqdjh3ZHFwcFlYcEZC?=
 =?utf-8?B?eFVJYmlSMEhWcDFjK3V2NzV6M3BIb0laTkN0Y0d1bGEyWkpZOU82R3dDVldU?=
 =?utf-8?B?UHBFS3hRZ2dJSTJ3L09DWm81N3R1WnRYcUxaTkg5QStQREhxRjAxeFZPVHJH?=
 =?utf-8?B?RWk4K3hEbUNvQ1ZDUWNKamR4akdXZHNZbE0vMzMrTmlvR1ZNM0NrZXRTa08x?=
 =?utf-8?B?SEx3NGZjN3ltdTJ5WFRWenY2cnJZTVM3RS9OVUs4SklnRFV2WkpjZmtNRnlY?=
 =?utf-8?B?V3pnSmJjZHFIbDBFL2w4T1RzTjh2ODFYYmVidyt5NWphTCtDM0ZsbnRheG1U?=
 =?utf-8?B?ek0vaDQ4Z2hmTnRnbHNVcWJad2lOb3hmM1Z5bFh2OVdQYlpXc2VURHBqMnBv?=
 =?utf-8?B?MHZKWDFESVpiK0x3anBoQjJxejB4dUJtMkZrY0JLZG44TnVtbU9qZGRna0JH?=
 =?utf-8?B?d0pUU2p0TDFjWDg5QllFZkNVY2xTdUlyNThwL25lOTN5Zk9BU3I2R1VPTVpj?=
 =?utf-8?Q?1Ovsab6Xk8nebmfz4Y6axIEST?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b526e50-0dda-4a00-b0a5-08db2ebd0636
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 12:15:59.0364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6PSfGzMBpqz5JCQbAyu6/sp6d1S9WecYFVuTgYhnhOHUx6pridUBNzxxeqphusYahCmJPG8DKyw4l/1mcmEi5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7638
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 22/29] drm/i915/adlp/tc: Use the DE HPD ISR
 register for hotplug detection
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MjIvMjldIGRybS9pOTE1L2FkbHAvdGM6IFVzZSB0aGUgREUgSFBEIElTUg0KPiByZWdpc3RlciBm
b3IgaG90cGx1ZyBkZXRlY3Rpb24NCj4gDQo+IFRoZSBzcGVjIHNheXMgdG8gdXNlIHRoZSBDUFUg
SVNSIHJlZ2lzdGVycyBmb3IgRFAtYWx0L1RCVCBIUEQgZGV0ZWN0aW9uIG9uDQo+IEFETFAsIHNv
IGRvIHRoYXQgaW5zdGVhZCBvZiB1c2luZyB0aGUgcmVsYXRlZCBJT00vVENTUyByZWdpc3RlcnMu
DQo+IA0KPiBCc3BlYzogNTU0ODAsIDU1NDgyLCA0OTIxMiwgNDkzMDUNCj4gDQoNClJldmlld2Vk
LWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYt
Ynk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCAyMSArKysrKysrKystLS0tLS0tLS0tLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCA4ZjE1
OWRlZDUwMWY4Li4zMTIyZjdjZThjOWEwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jDQo+IEBAIC02ODgsMjIgKzY4OCwxOSBAQCBzdGF0aWMgdTMyIGFkbHBf
dGNfcGh5X2hwZF9saXZlX3N0YXR1cyhzdHJ1Y3QNCj4gaW50ZWxfdGNfcG9ydCAqdGMpICB7DQo+
ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0Y190b19pOTE1KHRjKTsNCj4gIAlz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IHRjLT5kaWdfcG9ydDsNCj4gLQll
bnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoaTkxNSwgZGlnX3BvcnQtPmJh
c2UucG9ydCk7DQo+IC0JdTMyIGlzcl9iaXQgPSBpOTE1LT5kaXNwbGF5LmhvdHBsdWcucGNoX2hw
ZFtkaWdfcG9ydC0+YmFzZS5ocGRfcGluXTsNCj4gLQl1MzIgdmFsLCBtYXNrID0gMDsNCj4gKwll
bnVtIGhwZF9waW4gaHBkX3BpbiA9IGRpZ19wb3J0LT5iYXNlLmhwZF9waW47DQo+ICsJdTMyIGNw
dV9pc3JfYml0cyA9IGk5MTUtPmRpc3BsYXkuaG90cGx1Zy5ocGRbaHBkX3Bpbl07DQo+ICsJdTMy
IHBjaF9pc3JfYml0ID0gaTkxNS0+ZGlzcGxheS5ob3RwbHVnLnBjaF9ocGRbaHBkX3Bpbl07DQo+
ICsJdTMyIGNwdV9pc3I7DQo+ICsJdTMyIG1hc2sgPSAwOw0KPiANCj4gLQkvKg0KPiAtCSAqIE9u
IEFETC1QIEhXL0ZXIHdpbGwgd2FrZSBmcm9tIFRDQ09MRCB0byBjb21wbGV0ZSB0aGUgcmVhZA0K
PiBhY2Nlc3Mgb2YNCj4gLQkgKiByZWdpc3RlcnMgaW4gSU9NLiBOb3RlIHRoYXQgdGhpcyBkb2Vz
bid0IGFwcGx5IHRvIFBIWSBhbmQgRklBDQo+IC0JICogcmVnaXN0ZXJzLg0KPiAtCSAqLw0KPiAt
CXZhbCA9IGludGVsX2RlX3JlYWQoaTkxNSwgVENTU19ERElfU1RBVFVTKHRjX3BvcnQpKTsNCj4g
LQlpZiAodmFsICYgVENTU19ERElfU1RBVFVTX0hQRF9MSVZFX1NUQVRVU19BTFQpDQo+ICsJY3B1
X2lzciA9IGludGVsX2RlX3JlYWQoaTkxNSwgR0VOMTFfREVfSFBEX0lTUik7DQo+ICsJaWYgKGNw
dV9pc3IgJiAoY3B1X2lzcl9iaXRzICYgR0VOMTFfREVfVENfSE9UUExVR19NQVNLKSkNCj4gIAkJ
bWFzayB8PSBCSVQoVENfUE9SVF9EUF9BTFQpOw0KPiAtCWlmICh2YWwgJiBUQ1NTX0RESV9TVEFU
VVNfSFBEX0xJVkVfU1RBVFVTX1RCVCkNCj4gKwlpZiAoY3B1X2lzciAmIChjcHVfaXNyX2JpdHMg
JiBHRU4xMV9ERV9UQlRfSE9UUExVR19NQVNLKSkNCj4gIAkJbWFzayB8PSBCSVQoVENfUE9SVF9U
QlRfQUxUKTsNCj4gDQo+IC0JaWYgKGludGVsX2RlX3JlYWQoaTkxNSwgU0RFSVNSKSAmIGlzcl9i
aXQpDQo+ICsJaWYgKGludGVsX2RlX3JlYWQoaTkxNSwgU0RFSVNSKSAmIHBjaF9pc3JfYml0KQ0K
PiAgCQltYXNrIHw9IEJJVChUQ19QT1JUX0xFR0FDWSk7DQo+IA0KPiAgCXJldHVybiBtYXNrOw0K
PiAtLQ0KPiAyLjM3LjENCg0K
