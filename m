Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6216E95A6
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 15:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CB9610EC3C;
	Thu, 20 Apr 2023 13:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35CF110EC36;
 Thu, 20 Apr 2023 13:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681996754; x=1713532754;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Y8CUy6CDVVg5TL7ehT7u7F/k8e5ZKLb/xR3oG9ZqGWQ=;
 b=YeKxccHUfOEJl+I0V8HWfTPjwPinXH2zBWTLs6LmtQALOaHsMYSMw716
 81Sb9B2MGoXa39vUVAy2FxmN1W04BMSV6j7u3lN4a84lKeoerDlfoW9cZ
 66j/GrFM2Vta8iZrhUheUD4W7Aa5Zcba2A9puzhjm1Jm25aWMCe16qnjN
 nvK1KCdwczFCx3OrbB7oP5mZxsB6cp0lVu8QbOhTHTG8MBKouTxJXA/Wx
 e3OF2ClQJpbV24NYYVjSfgvWC0N+OIOidrgTZznqUZeQi6cmktY+xcsOq
 DNkKKHNMlzOZZRFCmRCi9Cyr9tRAXjioNTemdPYXzyQMGn+gI5m4mcAKB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="343204810"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="343204810"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 06:19:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="642141960"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="642141960"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 20 Apr 2023 06:19:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 06:19:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 06:19:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 06:19:12 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 06:19:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I/YlNRCgVYCljWHk5JUcEbKP3fFr1Yd5uRKA3GigyneA8rTky9ZaTpLyfsldSwNFnHwVFa2xedqEYa6uxQm/9YGqayjZxPf/gK32wSdk8cjs3k2jMbpLOsGu4FprpMIzpIH1K0i9IarhCTL3eeLgIkzt+GyBYtjQgx5qn3eQX5y43ZtpazfdMpU5rNkKNJU1IKDquB3nv7uN0ak3LSM+SaqWugJcwFrKer/wn7AOPbYYAhejD1MVew9rE1d3LkaPRt16dsLBLzEHLmpCunidWRRK0ytGHZHhM45OjD9Q111spSx1mRTyDjB5E3egKndTYZThVsoC8I9jVLZbxXw4ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y8CUy6CDVVg5TL7ehT7u7F/k8e5ZKLb/xR3oG9ZqGWQ=;
 b=LA6N24YrkKYzWJNOFCao8cmJNJraD/zyokxvMRWVRSujv8HSY+LBTsioIayUlQovgjh8LyfDVvSr0cHNA6Z3MwdYN/HckFf3JCC8icrnsWEYArAia4w2n4qD4M3IBjLMF0vzNiApevmmSKdHihM6sXk3A53KS/aiBqxr+XGxqZJInWplHISJx1tIXTRyWXnlnwY9uS3ew/5DhhpoOa08sX2Ee8Khn+JAsqfdfrzalKWEX7OXLCMSFijUiy3ENWeRhTVoJLvK06b3NzUkf1ynU8E4rbIDysvXx7jgDFHVQ6D1LkcGJqlh7/zRs7Q5Ny+i5L7EepOuwqYTQ+s+nLBtkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by PH8PR11MB7118.namprd11.prod.outlook.com (2603:10b6:510:216::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 13:19:10 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::e5e1:11b0:163a:c828]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::e5e1:11b0:163a:c828%8]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 13:19:10 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: Initialize dkl_phy
 spin lock from display code path
Thread-Index: AQHZchT1JgGddvJEYUGJZMIJij2gaq8yLKcAgAADMgCAAAmtAIAAA7AAgAHz/QA=
Date: Thu, 20 Apr 2023 13:19:09 +0000
Message-ID: <0394295946956dcd04d37d38bb4bfd08c9314386.camel@intel.com>
References: <20230418164337.50303-1-jose.souza@intel.com>
 <uiz4v7ipqtw3mtgvccmi6vgiqojptaahydvh66aaqwq2tvy7sn@ne5s2vatg2zp>
 <tfvlalzyff5hv5wxid4q5garmiburkapqo6xv3zdrdxicwt2un@64brrcp2ckgb>
 <878reo1gvt.fsf@intel.com>
 <iyxrhj6q37af2fhgk6bnj756rhofpek3n77ynmwkpd4d5eckdg@cp5jmu37fsn3>
In-Reply-To: <iyxrhj6q37af2fhgk6bnj756rhofpek3n77ynmwkpd4d5eckdg@cp5jmu37fsn3>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8185:EE_|PH8PR11MB7118:EE_
x-ms-office365-filtering-correlation-id: 316ef155-8a55-46bb-2205-08db41a1d3b5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +tp1o8zcVsZ1m//5O3uDFjsAii7u7vLb+hIid73Lxh2xFNuG4t4MTg9pz53l1JEgPfmYOeoRlZmIXj4JVx/QVJDeGfmFwEz6Cruj2EgmwtxgXmjD2wOcID+J0oWv06/HmlwDtpvezZmds80aXv+5eOHjizELiRoU/YhfG+v0ohYWZoQQnwixz/6J3JawqR2qZPHnWTo6KdzjXNRVo7GAtzPci4I+cZKrLCy3OEQvi2preqe0s4OinKERI7csZBrvCgcnw083xJA5Zb/3HUoNmeyIYewH5HFwMRAxNAJs8wLiBnYKHdKqdyiQ92fYdal+oGsDlgcOCRCdu5v4h3f5bSYRYM7o2abRROX49Lxp9j7b4W/eNBtusH0SaNqwC6BCTfSRVEtkUlck400XYaAfowThcKAnlcC+Wi23zwOJhOLxGgbuC3EPxW7BQhTBwBEShYE6Pq2KeWaZi87g0OMM+uaAgCRKg85c5eaR4b3P1WEKN92fylXkzfrjk+P3rrWvmj82FGEsJaGr/8PbpOvkBuktmI0+SdXxK+1oJO5/21iEjchfTludOTtEZo38ERWMnWEl7YpYfMyq2djt3/qOsuFiWNZiAtX70XLBAjjGCMvHwO78Mn9IBoMbQq8p0BOm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(376002)(366004)(39860400002)(451199021)(38070700005)(2906002)(8936002)(66899021)(38100700002)(8676002)(5660300002)(36756003)(86362001)(6506007)(6486002)(71200400001)(26005)(6512007)(6636002)(110136005)(54906003)(478600001)(2616005)(83380400001)(186003)(316002)(4326008)(66556008)(82960400001)(66446008)(64756008)(91956017)(450100002)(76116006)(66476007)(66946007)(122000001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnhJN0JwakEyVzNGVGVtSVpteGErb20yQjkxREF4VEpSMjkrL0dvN1dVeWU4?=
 =?utf-8?B?dHNJOUdoRHhXYjQ5bXg2MzhZL2IyaDByZ3VyeExtU1d2NjVmNXZNeWt1dUhL?=
 =?utf-8?B?ZGxPbEsrVUorektEalNYWGxXSXpYZldSSFhHRU9sYzRFQ3AwYWw2ZklNOWlM?=
 =?utf-8?B?Nnp6THZkYTJMWG5TaGpCWGJMV1JxdFZyVTdCOE12V1VyRUFLMEtHdG84Q2Vi?=
 =?utf-8?B?MXhqTVFQZnFJRDkxTG9yRG51WjkxQkE5QzVWdGRieDdHc3VWN3pTUk1xYXp2?=
 =?utf-8?B?ckkzQnZiUUJsamhDdDA3ejdGaHRWVExVcHJTMW9IYWxnSURCWTg2ZFE2U2JF?=
 =?utf-8?B?bEl1ZTgwTzg3TUdMRy9PQmpJWmlVemdtWEdkU013Wll0YklJS1J5d3RGN2NV?=
 =?utf-8?B?YmlEV3hYc2NFcnl3aHkwM1ZXTThqQzBjeVVQRi92UTFxRzAyOFRWQUtOUnh3?=
 =?utf-8?B?SGltRS9pckQzaFNGUU9VZzZUa2xTN1RSZHRSWDlNenVzZDBPWXQ0VmhsNUR1?=
 =?utf-8?B?UFRaUEhTZzlNbnRtV3hoTVA1Qkl2dzIxRkRJUUZYQ25wQlNibS9sY0d6VUNV?=
 =?utf-8?B?YVZpYW9NZmt1R3M3Q28wMVExS2RSVThvY1U1SlRZWC8zdjZkWHZWanBpMUJ1?=
 =?utf-8?B?eUN1ejBpRFBxN2ZiMXBocjA5RXplS1F4cm03Y1kvZ3JSVW9PU0cxRDZoL1ls?=
 =?utf-8?B?b0haeHdFbTk5STkweVY2UDdXQlZ2Ym05TmZUWnUwT2tSMFptcTdzYmZrd25t?=
 =?utf-8?B?bkVKMHJucThCcUQwTG4rN2pDVHFHSE9JcXRxUXVVaWpFNFFLQThycTgzaXFF?=
 =?utf-8?B?Y1RVZEg0OHhYYlhQV3M1dGRBa0pKWFhOc285STN2LzVZbDh3ekpSVlVGaTJr?=
 =?utf-8?B?UFJEL2l1ZVVkYU5XaVMwQm00Z3BjM0NkcWF6ejdiRzRlbnJySmtKNmhGbFlI?=
 =?utf-8?B?TVhpb055dmlONG1MMEVBSXcwU2NOT3VJdHg0QjNFVFR4UjBkSVpieHI1THhi?=
 =?utf-8?B?Mk9ETit1eXJrRmVESGpvNkM0NFNQNnUzWWhCRzViQ2xRaWxscXp2QXplSGRG?=
 =?utf-8?B?cTJVWnFiQVlSOHFkU2lVek55ZlZkbklFeUJVSDZCUlFma0dEU2FIVmhIV3Mx?=
 =?utf-8?B?WEc1NnV2UGtkb3dvNWhsWi91dnIvY2NFZHd2VjkvOGsrNHJibXZhaUl1Y1Ba?=
 =?utf-8?B?ckI5UGx4RkFZcnhEYjY5NUgxRW1UVmFIOUZZOGZNM0N1ZGhyUGdTQlVweDJD?=
 =?utf-8?B?dHlDR1M4bG0rTFIwZlFtTkpCM08vbVk0WTdxcnRVMXFEUkMzUU16S0REd2xL?=
 =?utf-8?B?ZS85THM2OHp6N1I2QlFLbW5OQlN3TytIeVBYelZpMDc1ZUZwUTlPTGREMTls?=
 =?utf-8?B?UE5ucDBVZnE2Q0Zqc0QvWGIzbVo1Z2E3QjlEd0ticUNNaUlacFlFMVc4M3JQ?=
 =?utf-8?B?eFM1WTNTbXZBRVVrTXE4d2RuREI3QU9MaGNHQlpvUFAyUnBCa0Y3T2xmOFJS?=
 =?utf-8?B?L2JJQzlBSkpTdHJuL2NCcUVwSFZaZGNwZHRFekZ5R28vZ2lHc0hIakJwZ3Zk?=
 =?utf-8?B?c3NaMFFoZzlpSld6TDVGY0FnUUFQY0M5c0p1MWh2YmdaRExTYTczdGpINUZG?=
 =?utf-8?B?cHEvdTJJdjFSRm9tYmtWUk9uMTdzVzcxN00rWVo5emJTY0RTcmVvT2hGTGs5?=
 =?utf-8?B?K2podGIzWG9SWnlLRFpaTUVpbGo1RUxqU3JTOWZ4Tjg0LzNNSXlkbUtybERI?=
 =?utf-8?B?UUwzdXg2eXFKUlNpc3oyOVhkb2hoWnk1Q2kyckM3TGhTNG9GY0dVdFJyK1NT?=
 =?utf-8?B?Tlh0dGY4eGREVVYrYkExa2J2cDhVaVF4Q3ZOZHMwNzF5KzA3WDhVZU1ZWDc5?=
 =?utf-8?B?T1V1VEFRenVsdjRPR0RRb3gvaHFFYk1Yc2pxOFYzOHNnNXdTM21yNXJobWx0?=
 =?utf-8?B?YjdkclBKdUpIZkJIRnJaeU9jRmtja3R0WFZyWGpJMTZaN1hzRDZZT2ZKdlY1?=
 =?utf-8?B?bGZFZkkrYUZoYnhybENlWHVaY2FjSlJ5QVBEb3lyclgxOVFaYXBuMzZLY2Qv?=
 =?utf-8?B?YWk2NHNxbktnUVlTREFMakJLZE51MDRrdDB5dUJjTXJhODM5QTB6TDJMMnE5?=
 =?utf-8?Q?pVxFINHxR8nCQaSRB6EwJrfc9?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9874AD8E621FAC44A67A0E192A74C2AF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 316ef155-8a55-46bb-2205-08db41a1d3b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 13:19:10.0003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e07HVLVZN0FHqPyrMAHhli+XepsQG5LLUQWjY1h7C3SAMENVVnPK2HjTQvvDEDV05pMn+ozTsOj4qTRMrGkheQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7118
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: Initialize dkl_phy
 spin lock from display code path
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
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTA0LTE5IGF0IDAwOjI5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFdlZCwgQXByIDE5LCAyMDIzIGF0IDEwOjE2OjIyQU0gKzAzMDAsIEphbmkgTmlrdWxh
IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMTggQXByIDIwMjMsIEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPiB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgQXByIDE4LCAyMDIzIGF0
IDExOjMwOjE4UE0gLTA3MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToNCj4gPiA+ID4gT24gVHVl
LCBBcHIgMTgsIDIwMjMgYXQgMDk6NDM6MzdBTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90ZToNCj4g
PiA+ID4gPiBTdGFydCB0byBtb3ZlIHRoZSBpbml0aWFsaXphdGlvbiBvZiBkaXNwbGF5IGxvY2tz
IGZyb20NCj4gPiA+ID4gPiBpOTE1X2RyaXZlcl9lYXJseV9wcm9iZSgpLCB0aGlzIHdheSBpdCBp
cyBhbHNvIGV4ZWN1dGVkIHdoZW4gcnVubmluZw0KPiA+ID4gPiA+IFhlIGttZC4NCj4gPiA+ID4g
PiANCj4gPiA+ID4gPiBUaGlzIHdpbGwgZml4IGEgd2FybmluZyBpbiBYZSBrbWQ6DQo+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gWyAgMjAxLjg5NDgzOV0geGUgMDAwMDowMDowMi4wOiBbZHJtXSBbRU5D
T0RFUjoyMzU6RERJIEEvUEhZIEFdIGZhaWxlZCB0byByZXRyaWV2ZSBsaW5rIGluZm8sIGRpc2Fi
bGluZyBlRFANCj4gPiA+ID4gPiBbICAyMDIuMTM2MzM2XSB4ZSAwMDAwOjAwOjAyLjA6IFtkcm1d
ICpFUlJPUiogRmFpbGVkIHRvIHdyaXRlIHNvdXJjZSBPVUkNCj4gPiA+ID4gPiBbICAyMDIuMTc1
MzQ2XSBJTkZPOiB0cnlpbmcgdG8gcmVnaXN0ZXIgbm9uLXN0YXRpYyBrZXkuDQo+ID4gPiA+ID4g
WyAgMjAyLjE3NTM0N10gaXJxIGV2ZW50IHN0YW1wOiA3NTQwNjANCj4gPiA+ID4gPiBbICAyMDIu
MTc1MzU5XSBoYXJkaXJxcyBsYXN0ICBlbmFibGVkIGF0ICg3NTQwNTkpOiBbPGZmZmZmZmZmODEy
MmNmNzk+XSB0aWNrX25vaHpfaWRsZV9lbnRlcisweDU5LzB4ODANCj4gPiA+ID4gPiBbICAyMDIu
MTgwMjk0XSBUaGUgY29kZSBpcyBmaW5lIGJ1dCBuZWVkcyBsb2NrZGVwIGFubm90YXRpb24sIG9y
IG1heWJlDQo+ID4gPiA+ID4gWyAgMjAyLjE4Mzc3NF0gaGFyZGlycXMgbGFzdCBkaXNhYmxlZCBh
dCAoNzU0MDYwKTogWzxmZmZmZmZmZjgxMWE1NTM5Pl0gZG9faWRsZSsweDk5LzB4MjMwDQo+ID4g
PiA+ID4gWyAgMjAyLjE5MjczNF0geW91IGRpZG4ndCBpbml0aWFsaXplIHRoaXMgb2JqZWN0IGJl
Zm9yZSB1c2U/DQo+ID4gPiA+ID4gWyAgMjAyLjE5ODk1MV0gc29mdGlycXMgbGFzdCAgZW5hYmxl
ZCBhdCAoNzUzOTQ4KTogWzxmZmZmZmZmZjgxMTRhYmFlPl0gaXJxX2V4aXRfcmN1KzB4YmUvMHgx
MzANCj4gPiA+ID4gPiBbICAyMDIuMjA2ODgyXSB0dXJuaW5nIG9mZiB0aGUgbG9ja2luZyBjb3Jy
ZWN0bmVzcyB2YWxpZGF0b3IuDQo+ID4gPiA+ID4gWyAgMjAyLjIxMjIzNl0gc29mdGlycXMgbGFz
dCBkaXNhYmxlZCBhdCAoNzUzOTQzKTogWzxmZmZmZmZmZjgxMTRhYmFlPl0gaXJxX2V4aXRfcmN1
KzB4YmUvMHgxMzANCj4gPiA+ID4gPiBbICAyMDIuMjIwNTkyXSBDUFU6IDIgUElEOiAxNDE1IENv
bW06IG1vZHByb2JlIFRhaW50ZWQ6IEcgICAgICAgIFcgICAgICAgICAgNi4zLjAtcmM0K3plaC14
ZSsgIzkwOQ0KPiA+ID4gPiA+IFsgIDIwMi4yNDMwMDJdIEhhcmR3YXJlIG5hbWU6IEludGVsIENv
cnBvcmF0aW9uIFJhcHRvciBMYWtlIENsaWVudCBQbGF0Zm9ybS9SYXB0b3JMYWtlLVAgTFA1IFJW
UCwgQklPUyBSUExQRldJMS5SMDAuMzM2MS5BMTQuMjIxMTE1MTU0OCAxMS8xNS8yMDIyDQo+ID4g
PiA+ID4gWyAgMjAyLjI1NTczN10gQ2FsbCBUcmFjZToNCj4gPiA+ID4gPiBbICAyMDIuMjU4MTc5
XSAgPFRBU0s+DQo+ID4gPiA+ID4gWyAgMjAyLjI2MDI3NV0gIGR1bXBfc3RhY2tfbHZsKzB4NTgv
MHhjMA0KPiA+ID4gPiA+IFsgIDIwMi4yNjM5MjJdICByZWdpc3Rlcl9sb2NrX2NsYXNzKzB4NzU2
LzB4N2QwDQo+ID4gPiA+ID4gWyAgMjAyLjI2ODE2NV0gID8gZmluZF9oZWxkX2xvY2srMHgyYi8w
eDgwDQo+ID4gPiA+ID4gWyAgMjAyLjI3MTk3NV0gIF9fbG9ja19hY3F1aXJlKzB4NzIvMHgyOGIw
DQo+ID4gPiA+ID4gWyAgMjAyLjI3NTc4Nl0gID8gZGVidWdfb2JqZWN0X2ZyZWUrMHhiNC8weDE2
MA0KPiA+ID4gPiA+IFsgIDIwMi4yNzk5NDZdICBsb2NrX2FjcXVpcmUrMHhkMS8weDJkMA0KPiA+
ID4gPiA+IFsgIDIwMi4yODM1MDNdICA/IGludGVsX2RrbF9waHlfcmVhZCsweDE4LzB4NjAgW3hl
XQ0KPiA+ID4gPiA+IFsgIDIwMi4yODgxODFdICBfcmF3X3NwaW5fbG9jaysweDJhLzB4NDANCj4g
PiA+ID4gPiBbICAyMDIuMjkxODI1XSAgPyBpbnRlbF9ka2xfcGh5X3JlYWQrMHgxOC8weDYwIFt4
ZV0NCj4gPiA+ID4gPiBbICAyMDIuMjk2NDc1XSAgaW50ZWxfZGtsX3BoeV9yZWFkKzB4MTgvMHg2
MCBbeGVdDQo+ID4gPiA+ID4gWyAgMjAyLjMwMDk0OV0gIGljbF9hdXhfcG93ZXJfd2VsbF9lbmFi
bGUrMHgyYmQvMHg0MDAgW3hlXQ0KPiA+ID4gPiA+IFsgIDIwMi4zMDYyMDJdICA/IGludGVsX2Rp
c3BsYXlfcG93ZXJfZ3JhYl9hc3luY19wdXRfcmVmKzB4NzUvMHgxMjAgW3hlXQ0KPiA+ID4gPiA+
IFsgIDIwMi4zMTI2NDldICBpbnRlbF9wb3dlcl93ZWxsX2VuYWJsZSsweDFjLzB4NzAgW3hlXQ0K
PiA+ID4gPiA+IFsgIDIwMi4zMTc1NDNdICBfX2ludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0X2RvbWFp
bi5wYXJ0LjArMHg0ZC8weDcwIFt4ZV0NCj4gPiA+ID4gPiBbICAyMDIuMzIzODEyXSAgaW50ZWxf
ZGlzcGxheV9wb3dlcl9nZXQrMHg0My8weDcwIFt4ZV0NCj4gPiA+ID4gPiBbICAyMDIuMzI4NzA4
XSAgaW50ZWxfdGNfcG9ydF9pbml0KzB4MTk5LzB4MmEwIFt4ZV0NCj4gPiA+ID4gPiBbICAyMDIu
MzMzMzYzXSAgaW50ZWxfZGRpX2luaXQrMHg2YWQvMHhiMDAgW3hlXQ0KPiA+ID4gPiA+IFsgIDIw
Mi4zMzc2NzhdICBpbnRlbF9tb2Rlc2V0X2luaXRfbm9nZW0rMHg1MzYvMHg2ZDAgW3hlXQ0KPiA+
ID4gPiA+IFsgIDIwMi4zNDI4MzhdICB4ZV9kaXNwbGF5X2luaXRfbm9hY2NlbCsweDE5LzB4NDAg
W3hlXQ0KPiA+ID4gPiA+IFsgIDIwMi4zNDc3NDNdICB4ZV9kZXZpY2VfcHJvYmUrMHgxZjUvMHgy
YTAgW3hlXQ0KPiA+ID4gPiA+IFsgIDIwMi4zNTIxMjddICB4ZV9wY2lfcHJvYmUrMHgyOGMvMHg0
ODAgW3hlXQ0KPiA+ID4gPiA+IFsgIDIwMi4zNTYyNjBdICBwY2lfZGV2aWNlX3Byb2JlKzB4OWQv
MHgxNTANCj4gPiA+ID4gPiBbICAyMDIuMzYwMTY0XSAgcmVhbGx5X3Byb2JlKzB4MTlhLzB4NDAw
DQo+ID4gPiA+ID4gWyAgMjAyLjM2MzgwOV0gID8gX19wZnhfX19kcml2ZXJfYXR0YWNoKzB4MTAv
MHgxMA0KPiA+ID4gPiA+IFsgIDIwMi4zNjgyMjZdICBfX2RyaXZlcl9wcm9iZV9kZXZpY2UrMHg3
My8weDE3MA0KPiA+ID4gPiA+IFsgIDIwMi4zNzI1NThdICBkcml2ZXJfcHJvYmVfZGV2aWNlKzB4
MWEvMHg5MA0KPiA+ID4gPiA+IFsgIDIwMi4zNzY2MzJdICBfX2RyaXZlcl9hdHRhY2grMHhjZC8w
eDFjMA0KPiA+ID4gPiA+IFsgIDIwMi4zODA0NDJdICBidXNfZm9yX2VhY2hfZGV2KzB4NzIvMHhj
MA0KPiA+ID4gPiA+IFsgIDIwMi4zODQyNTNdICBidXNfYWRkX2RyaXZlcisweDExMC8weDIxMA0K
PiA+ID4gPiA+IFsgIDIwMi4zODgwNjNdICBkcml2ZXJfcmVnaXN0ZXIrMHg1MC8weDEwMA0KPiA+
ID4gPiA+IFsgIDIwMi4zOTE4NzNdICA/IF9fcGZ4X2luaXRfbW9kdWxlKzB4MTAvMHgxMCBbeGVd
DQo+ID4gPiA+ID4gWyAgMjAyLjM5NjQzMV0gIGRvX29uZV9pbml0Y2FsbCsweDU1LzB4MjYwDQo+
ID4gPiA+ID4gWyAgMjAyLjQwMDI0NV0gID8gcmN1X2lzX3dhdGNoaW5nKzB4ZC8weDQwDQo+ID4g
PiA+ID4gWyAgMjAyLjQwNDA1OF0gID8ga21hbGxvY190cmFjZSsweGEwLzB4YjANCj4gPiA+ID4g
PiBbICAyMDIuNDA3Nzg2XSAgZG9faW5pdF9tb2R1bGUrMHg0NS8weDFlMA0KPiA+ID4gPiA+IFsg
IDIwMi40MTE1MTJdICBfX2RvX3N5c19maW5pdF9tb2R1bGUrMHhhYy8weDEyMA0KPiA+ID4gPiA+
IFsgIDIwMi40MTU4MzhdICBkb19zeXNjYWxsXzY0KzB4MzcvMHg5MA0KPiA+ID4gPiA+IFsgIDIw
Mi40MTkzOTddICBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg3Mi8weGRjDQo+ID4g
PiA+ID4gWyAgMjAyLjQyNDQwOV0gUklQOiAwMDMzOjB4N2ZkMTEyOTFlYTNkDQo+ID4gPiA+ID4g
WyAgMjAyLjQyNzk2N10gQ29kZTogNWIgNDEgNWMgYzMgNjYgMGYgMWYgODQgMDAgMDAgMDAgMDAg
MDAgZjMgMGYgMWUgZmEgNDggODkgZjggNDggODkgZjcgNDggODkgZDYgNDggODkgY2EgNGQgODkg
YzIgNGQgODkgYzggNGMgOGIgNGMgMjQgMDggMGYgMDUgPDQ4PiAzZCAwMSBmMCBmZiBmZiA3MyAw
MSBjMyA0OCA4YiAwZCBjMyBhMyAwZiAwMCBmNyBkOCA2NCA4OSAwMSA0OA0KPiA+ID4gPiA+IFsg
IDIwMi40NDY1MzBdIFJTUDogMDAyYjowMDAwN2ZmZmZkZTExMzY4IEVGTEFHUzogMDAwMDAyNDYg
T1JJR19SQVg6IDAwMDAwMDAwMDAwMDAxMzkNCj4gPiA+ID4gPiBbICAyMDIuNDU0MDMxXSBSQVg6
IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwNTYxNmE2MTdmMjEwIFJDWDogMDAwMDdmZDExMjkx
ZWEzZA0KPiA+ID4gPiA+IFsgIDIwMi40NjExMDZdIFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6
IDAwMDA1NjE2YTYxN2ZlNjAgUkRJOiAwMDAwMDAwMDAwMDAwMDBlDQo+ID4gPiA+ID4gWyAgMjAy
LjQ2ODE4Ml0gUkJQOiAwMDAwMDAwMDAwMDQwMDAwIFIwODogMDAwMDAwMDAwMDAwMDAwMCBSMDk6
IDAwMDAwMDAwMDAwMDAwMDINCj4gPiA+ID4gPiBbICAyMDIuNDc1MjUwXSBSMTA6IDAwMDAwMDAw
MDAwMDAwMGUgUjExOiAwMDAwMDAwMDAwMDAwMjQ2IFIxMjogMDAwMDU2MTZhNjE3ZmU2MA0KPiA+
ID4gPiA+IFsgIDIwMi40ODIzMTldIFIxMzogMDAwMDU2MTZhNjE3ZjM0MCBSMTQ6IDAwMDAwMDAw
MDAwMDAwMDAgUjE1OiAwMDAwNTYxNmE2MTgwNjUwDQo+ID4gPiA+ID4gWyAgMjAyLjQ4OTM5Nl0g
IDwvVEFTSz4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiB2MjoNCj4gPiA+ID4gPiAtIGFkZGVkIGlu
dGVsX2Rpc3BsYXlfbG9ja3NfaW5pdCgpDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gdjM6DQo+ID4g
PiA+ID4gLSByZWJhc2VkDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gdjQ6DQo+ID4gPiA+ID4gLSBk
cm9wIGludGVsX2Rpc3BsYXlfbG9ja3NfaW5pdCgpDQo+ID4gPiA+IA0KPiA+ID4gPiB3aHk/DQo+
ID4gPiANCj4gPiA+IGFoLi4uIG9rLCBub3cgd2UgaGF2ZSBpbnRlbF9kaXNwbGF5X2RyaXZlcl9l
YXJseV9wcm9iZSgpLiBJIHRob3VnaHQgeW91DQo+ID4gPiB3ZXJlIGRyb3BwaW5nIHRoZSBjYWxs
IGZyb20gaTkxNV9kcml2ZXIuYw0KPiA+ID4gDQo+ID4gPiBSZW1haW5pbmcgcXVlc3Rpb24gZm9y
IGRpc3BsYXk6IGRvIHdlIHdhbnQgdG8gc3ByZWFkIHRoZSBsb2NrDQo+ID4gPiBpbml0aWFsaXph
dGlvbiB0byBlYWNoIGNvbXBpbGF0aW9uIHVuaXQ/ICBPciBzaG91bGQgd2UganVzdCBrZWVwIGEN
Cj4gPiA+IA0KPiA+ID4gCXN0YXRpYyBsb2Nrc19pbml0KCkgeyA8YWxsIHRoZSBsb2NrcyBoZXJl
PiB9DQo+ID4gPiANCj4gPiA+IHRoZSBsb2NrIGluaXQgc2VlbXMgYSB2ZXJ5IGNoZWFwIGluaXQg
dGhhdCBtYXliZSBkb2Vzbid0IGRlc2VydmUgdG8gYmUNCj4gPiA+IHNwcmVhZC4gVGhlbiB0aGlz
IHBhdGNoIGNvdWxkIGp1c3QgbW92ZSBhbGwgdGhlIG11dGV4ZXMgaW5pdGlhbGl6YXRpb24NCj4g
PiA+IHRoYXQgd2VyZSBsZWZ0IGJlaGluZC4NCj4gPiANCj4gPiBJIHN0aWxsIHRoaW5rIGlmIG9u
bHkgb25lIGZpbGUgdXNlcyBzb21ldGhpbmcsIHRoZW4gdGhhdCBmaWxlIHNob3VsZA0KPiA+IGlu
Y2x1ZGUgdGhlIGluaXQgZm9yIGl0IHRvbywgYW5kIG5vYm9keSBlbHNlIHNob3VsZCB0b3VjaCBp
dC4gSW5jbHVkaW5nDQo+ID4gbG9ja3MuIElkZWFsbHksIHRoZXkgd291bGQgYmUgc3Rvd2VkIGF3
YXkgaW4gYWxsb2NhdGVkIG9wYXF1ZSBzdHJ1Y3RzDQo+ID4gdGhhdCBjYW4ndCBldmVuIGJlIGFj
Y2Vzc2VkIChvciBpbml0aWFsaXplZCkgYnkgYW55b25lIGVsc2UuDQo+IA0KPiBzby4uLiB0aGlz
IHZlcnNpb24gb2YgdGhlIHBhdGNoPyAgV2Ugd2lsbCBuZWVkIHRvIHNwcmVhZCB0aGUgbXV0ZXhl
cw0KPiBhcm91bmQgdGhlbi4NCg0KRG8gd2UgaGF2ZSBhbiBhZ3JlZW1lbnQgaGVyZT8NCkknbSBh
bHNvIGluIGZhdm9yIG9mIGluaXQgYWxsIHZhcmlhYmxlcyBpbiB0aGUgb25seSBmaWxlIHRoYXQg
dG91Y2hlcyBpdC4NCg0KVGhlIG90aGVyIG11dGV4ZXMgY2FuIGJlIG1vdmVkIGdyYWR1YWxseS4N
Cg0KPiANCj4gTHVjYXMgRGUgTWFyY2hpDQo+IA0KPiA+IA0KPiA+IEJSLA0KPiA+IEphbmkuDQo+
ID4gDQo+ID4gDQo+ID4gLS0gDQo+ID4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcg0KDQo=
