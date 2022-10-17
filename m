Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0104601572
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 19:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA79510EDE8;
	Mon, 17 Oct 2022 17:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F29BF10EDE8
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 17:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666027971; x=1697563971;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=iIbhpluxNSHHKE+8PfJeiiq9i7vRjsi8uiIHjwTS4zQ=;
 b=bLYR7vXCx7eez+X/74UUhTjAd9QvDncolEWCAaVen9jXQFZQ7CZCniT1
 lRQUUYtYHkmDvei+tum8zib6bs/Bqq4U7GzThGMRceBRTaxlqDyAJTUfd
 G/Dn1/PMG0RoJjhdDG7q8s0uSbUxKk1oq+WK7FbPn8IxYB0fnXSmeLbzD
 TBInwutPa2Lptywm7pAjJyfq1DePXnHhY7n55CvLHkxfCAQNDLUGA8G/q
 A0g8iCQpdHPeS/9Y4Jq5NeSULGok5bA7nD5NQEvpvBs0RZs08BRAcqJU5
 zjG7bo91ERKCV2wuwNtrbmhcp1GT8Ig7bYfgn/c2ZQnt89Is+UmGoSuH5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="285590138"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="285590138"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 10:32:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="606205435"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="606205435"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 17 Oct 2022 10:32:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 10:32:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 10:32:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 10:32:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RlkBURFVo7hhIwAIdy/AS5LOuc0TQqrnT8ZdNXfkVxrrkaIbTaVzG+KCZHM98WKyeGo++1JXoIBo/CxoQHTEYjYL30SNZBNfyOnPtJFVah18eD7uZErcLlEy6a3SqnMLi89QgiUu/0UZc/hP/sH/rAT1o5q3JnFZ0J6hkMQqDUa41Cqhq2ApVSEBG7RAXUOuUjddsIvZFjG+sntHhkIFfddFDtV8Yc6x3CSQVNp5JH5Wj1W4tCox3XReIX1WYzkv+qdryP9j5kWAOASzeKMGcRT3CWu4SPT1KFBt1zQ7akHNSJbppE7PT6QIs5cqhnK5E9KfKbfRXgBUHY5B3uflDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iIbhpluxNSHHKE+8PfJeiiq9i7vRjsi8uiIHjwTS4zQ=;
 b=EzaTo7OlQQuN7E1CT+Go38XtJwS+Ph6EW+UIs35eBOW2YC5aabHsw4LOF8MczIgzyI9Osl06SEHtPlpFjKGnwn89lLKnI3IQKZJnv5O4ElPynEL1fHxPrFBtqfIpbt5GVEHwato6XS4VQI+/wtC7hgDwSSsZzWlkGrD3JzvH+JC1sqdH6GZhPZMHqHfi5OYg1KUojomc2wYQGG/LcQ0nYyO8JXl32NTNeU6okGdlm3xNoQqKoQ4imW3t6VzqPB3hs3MC3T3ZyCmJqNWjTrIMXyoSrV+7Cyy7kVzkNDo97GCNQecGFaQTomRMcFzBy/gNwjGSso/KU3qbd2YNezhZbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM4PR11MB5503.namprd11.prod.outlook.com (2603:10b6:5:39f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.30; Mon, 17 Oct 2022 17:32:38 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 17:32:38 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Add compute reglist for
 GuC error capture
Thread-Index: AQHY4EpVfwBhC3TjLU+/mmisAvFYFK4SSJ0AgACUTIA=
Date: Mon, 17 Oct 2022 17:32:38 +0000
Message-ID: <f1b85264b22665387aecce6b5891b6c138af3dbb.camel@intel.com>
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
 <20221015035952.1741319-3-alan.previn.teres.alexis@intel.com>
 <fb41a0fb-232e-a3b6-5fc6-6317298f89b5@linux.intel.com>
In-Reply-To: <fb41a0fb-232e-a3b6-5fc6-6317298f89b5@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DM4PR11MB5503:EE_
x-ms-office365-filtering-correlation-id: 2b82a1d0-cc63-4025-d0a2-08dab0659620
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F7jEJCYwEc0NfY+REWv2ej+2kyMgFT3/+Gm6vOw0+Ym5p9XR66mTLcIwbZKqKnqk/zajpz4Q3R4FEYTSJwwZUuSInDaHW5WCErlIYr6H/UyuVSOChEIt2r4mdblie+wRLDmUcpZefvQYTU2c/f0ORhapIOzVpQUlCyztkalmo/HuhKKmWlk9WkAI+e1pxlgIOpvZPQCYTgfmT7xt2IrOALSBbProW8H+iI+VOLe5FJAnVCJRZZwY8MIR3rh3b6OiMXqTnTq3ylX3eFaMMqZNdXeQQb3wk+GTZUhLPVZu2eCZc5WpU5FhutYmn6DHMrPk9KGOLBJeK5OIAXYTwKqgdPF6ZI+p0XdacvfsamhXToWuIFlI3VoAPJioExlzI0BrT7zYmtwqJZ6EeddqBWQwl1oTW6ci0fOJ4Z/1TtPymAPIrD3YhPuShGF3U/6P/J7uZ/sn16g6qxjvUTPUBsypCoE4H/X779UgnTNLXj+U7ZLA/q6g7N6VKl9DeultMtjX2gnc6DNpqkIV0/bOLOBq7KhnG0r4OSqd6o7SIa08Y+jzrSh6ooW6e9FmOp5jA2kCr39KE9FcF1ZYnkADf5j2LIyUhvBOsi3LuGSi4Jg8xA1Mfh8kj+dQYio6cUjvy3H33CtN/pOYVbTyRvq0bvOI1T9hV+UuI5RT2LwlW+1Y4XVrPGRb1eV+DWTYu2EZiaS0HWlWtiVluxtaWaEnMeFBYhcUxzKYbiVzA1NIP5U7avpGBnzHXlDpYlc45wnbcriqLosU+fyYeErRbXlOTI48OQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(376002)(366004)(396003)(451199015)(186003)(316002)(110136005)(36756003)(2616005)(6506007)(4001150100001)(2906002)(5660300002)(6512007)(26005)(53546011)(8936002)(41300700001)(86362001)(66476007)(64756008)(66556008)(66946007)(76116006)(91956017)(66446008)(8676002)(71200400001)(38100700002)(122000001)(38070700005)(82960400001)(6486002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YzBnZFFPaGtYeGJERm5rMElydk9DQ1I3QnMzbzN4YlRUbE14UnR3Rk1rK1F2?=
 =?utf-8?B?eFZLbVNyS2MyNW15UWNPSjdiOVpTeUk0cC93T2RXQUtmNEszbXFHNjNJcjNV?=
 =?utf-8?B?U2Z3SEYxenVoQ0VlRUk2U1E5TjVQWUk3L0U0MlFGWDNwTlNUOFJWTE5LVkVQ?=
 =?utf-8?B?K3RwVmdMTzlNZThLN3pGSWNxVlpnUWVGVmJqUUtjUUlCVnJ0QVFHSk1UOUpt?=
 =?utf-8?B?ODFFbVU1d2luZ0tZYWdLWVYzZnRTS0E0U3FDRnBxc2hFMEVUNkJxTndGOWdN?=
 =?utf-8?B?aURoNkE5ZlllRWtUcEZrODVaM3B2WGYyTWhiZTROdklvdHRUNXUwVjFDdlRG?=
 =?utf-8?B?NnZMY3pCTkdCVGZNNWdKWUkvU3hZLzlUV1pqZXBWVWQ4akIwZ0RKcHJ5cTdG?=
 =?utf-8?B?TW96K1h5WVMvT00zUlMxT0FWbUg4UXZURUlLamFURlNtMUg0cHcxNzlNYmNC?=
 =?utf-8?B?M0QxVzVob0dkYUEwdWpOcWIwYlBDYlZoWkRiWWsyWXc1NkVhVWpxVmRaUkdO?=
 =?utf-8?B?ZXFNeWROVHBhN2hOUmxqOGJBMGo0MXFvVjBSU2lnc2xBd2diRFBYcWJtMHBs?=
 =?utf-8?B?WXJkQnVxM2xpKzhRYWdhWE9lY1k1TGVENS9uYlF5TWVBcFI0djhxNzU0RUo0?=
 =?utf-8?B?ZTFlWVZJZFFZMTVlRGcrWUwrcnF0L0x2MGFTc1VlN0s4MThyQ1daQWUzUFoz?=
 =?utf-8?B?YUpQbWVZRjVvY0NWQThna0J5VWpoR01EU0ljN0tkT2Q2VlNtdFhPY2h5dWd6?=
 =?utf-8?B?VkdUQ3QvM0l5cFI1djEvYnZRVVcxekh4Sk1UcDloTHk0MnE1VGlPU29Ncm9W?=
 =?utf-8?B?Vk5YaDFVOEJYZng4SHFKZkdwTy9wcHhhY2lxK1hKcE1kVnk2Y05lTWxGZkwz?=
 =?utf-8?B?b1lFZkJkcGpjck9xSWUwaG82TjZIMUc4Ylo3aW9XNXpjNVFIRUcwWGovK01U?=
 =?utf-8?B?SjlnNk9ueG1SaEErQkNyWGt5MlNhVWkzMUwyUWFmQndKS2dzVW5taWpidzhE?=
 =?utf-8?B?aEQ3QmV6eDE4d1Bhbzd0K3lndlBQZG04S3lQY1pHQjJtK3hScDcySDNuajRK?=
 =?utf-8?B?dFhBaWs3ZTZ4U0t1ZnZkUzNDYlhPSEJ3Y1BmSGRmYzRtTlQ3VFRIbEtKU3Bt?=
 =?utf-8?B?cFJJSjd1NVF5dGFUNTJjM2ZNR3oxNU1vczJYOFUyaXY5cVRtQkp6d3BDbXY2?=
 =?utf-8?B?M1lHOG56MFhiYWpGTUZaQ3JCTWQrTytZallhenE2aXZSdUlkWjFITkNGM3JR?=
 =?utf-8?B?MnRaV3Q0S3Z4YVNKS2pBb3E1Tmx5Wnd0ZVluczMrQlZPakQ5eXl6cFB0aXhs?=
 =?utf-8?B?dmFwQXhUSTYxMzJrc2IweTZ0SVQyQkZkb1dacHFBYThqeUlNTjNxaDVSUEo3?=
 =?utf-8?B?V3VjRWVMKzN4QmU5aDVXd2NSalZHT2dBRnorWUpJQ2lxUWxwV05qZW1HNm8w?=
 =?utf-8?B?UHFLcjhqOFp3aEp6UG56ZDBlK0E0VWNhL0MrRnJIaFlqMGNrdzRYVWtsM0NL?=
 =?utf-8?B?Q0J0L1ZFRmZQQ3pCaEdldVVXTWEvaWZ4RHpDMnNBdnAyemxNUkU3cWFrMU1F?=
 =?utf-8?B?U2E1SUNjOG1DYXUvTVUyZXJCQnZQUnRoYWpXVk9xYkNSVjRCRDNTRi9DTVJy?=
 =?utf-8?B?cFNpNXI4SUlFRnJxbGNLVjJtdzlrcjFPR0xJeE9JNlY4ZEs0a1A5dXdZcHgz?=
 =?utf-8?B?dmJBUHMySGJpVDV1azJHU1lvQVA1V0trOTA2VmgyZlh5UjhvT1grWE1zTEJI?=
 =?utf-8?B?a0ljQ1FCV2tVQUNQd3dPM0lzcHlneUdyMVhDM3QzQ2NSb2NucDdsRmZFU3VV?=
 =?utf-8?B?UE9uUzdEUU56VG54SmVoVTcyK2JVT0NYajVqTEw5dDg2VnlGNXFOcEhvY1dG?=
 =?utf-8?B?UlJLU2dNRmFaSHZhRGo1dW1qaUd0U3ZxaU9aSHoyVUZ0R3hxOEdXbDFJN3FH?=
 =?utf-8?B?a0RQQVRkbDA2dGFwMnIxWGk0dXh4NDhTRWJMd0pscFhiNjFHRnY2Ymx5dkNa?=
 =?utf-8?B?amVjZ2FUYjhZNytDRHNaakdGbExBa1pXUWZVSGRmajkrZ2duZkhTUmZBK3dh?=
 =?utf-8?B?aEt0UmxqTlVBVHF1OHNucDRDSTlOSm9ZVHE3ZVVCQ3F0bXJCK3FJcS9kSFlh?=
 =?utf-8?B?S2lyQTZuZ0RabE1BelowaURIQ0ZoMFo3d2RYTVFXYlE1VStLdUN6QnF2VFN5?=
 =?utf-8?Q?R3cQ9Si4ze2tELt8BhKx6AY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DAEBAEB3BFAD4A43BA71CD1B3F820B66@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b82a1d0-cc63-4025-d0a2-08dab0659620
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2022 17:32:38.2796 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GYipk62E5xbe3Dx6GZMM+Jj/2vYkqgNje5M31nZUqjaOpXmPwl53JmaRkCcpeo+mkZ9EXGEKSbqVSB6xkebm/QfRbfGpx6y1i9mE6cGabhwcsk39r5R1lJ6nmm/RQCcg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5503
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Add compute reglist for
 GuC error capture
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

QURMLVAgZG9lc250IHN1cHBvcnQgQ0NTIGFuZCBERzIgaXMgc3RsbCBmb3JjZS1wcm9iZSAoc28g
aG9waW5nIHRvIGdldCB0aGlzIGJlZm9yZSBERzIgZ29lcyBsaXZlKS4NCi4uLmFsYW4NCg0KT24g
TW9uLCAyMDIyLTEwLTE3IGF0IDA5OjQzICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4g
T24gMTUvMTAvMjAyMiAwNDo1OSwgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gQWRkIGNvbXB1dGUg
cmVnbGlzdCBmb3IgR3VDIGVycm9yIGNhcHR1cmUuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTog
QWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5jIHwg
NCArKysrDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJl
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5jDQo+ID4g
aW5kZXggMjkwYzFlMTM0M2RkLi5kYTNhMDljMTFkMTIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2NhcHR1cmUuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMNCj4gPiBAQCAtMTY5LDYg
KzE2OSw4IEBAIHN0YXRpYyBzdHJ1Y3QgX19ndWNfbW1pb19yZWdfZGVzY3JfZ3JvdXAgZGVmYXVs
dF9saXN0c1tdID0gew0KPiA+ICAgCU1BS0VfUkVHTElTVChkZWZhdWx0X2dsb2JhbF9yZWdzLCBQ
RiwgR0xPQkFMLCAwKSwNCj4gPiAgIAlNQUtFX1JFR0xJU1QoZGVmYXVsdF9yY19jbGFzc19yZWdz
LCBQRiwgRU5HSU5FX0NMQVNTLCBHVUNfUkVOREVSX0NMQVNTKSwNCj4gPiAgIAlNQUtFX1JFR0xJ
U1QoeGVfbHBkX3JjX2luc3RfcmVncywgUEYsIEVOR0lORV9JTlNUQU5DRSwgR1VDX1JFTkRFUl9D
TEFTUyksDQo+ID4gKwlNQUtFX1JFR0xJU1QoZGVmYXVsdF9yY19jbGFzc19yZWdzLCBQRiwgRU5H
SU5FX0NMQVNTLCBHVUNfQ09NUFVURV9DTEFTUyksDQo+ID4gKwlNQUtFX1JFR0xJU1QoeGVfbHBk
X3JjX2luc3RfcmVncywgUEYsIEVOR0lORV9JTlNUQU5DRSwgR1VDX0NPTVBVVEVfQ0xBU1MpLA0K
PiANCj4gRG9lcyB0aGlzIG1lYW5zIGVycm9yIGNhcHR1cmUgb24gQURMLVAgd2FzIGluY29tcGxl
dGUgYWthIHNob3VsZCANCj4gc29tZXRoaW5nIGJlIHNlbnQgdG8gc3RhYmxlPw0KPiANCj4gUmVn
YXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4gPiAgIAlNQUtFX1JFR0xJU1QoZW1wdHlfcmVnc19s
aXN0LCBQRiwgRU5HSU5FX0NMQVNTLCBHVUNfVklERU9fQ0xBU1MpLA0KPiA+ICAgCU1BS0VfUkVH
TElTVCh4ZV9scGRfdmRfaW5zdF9yZWdzLCBQRiwgRU5HSU5FX0lOU1RBTkNFLCBHVUNfVklERU9f
Q0xBU1MpLA0KPiA+ICAgCU1BS0VfUkVHTElTVChlbXB0eV9yZWdzX2xpc3QsIFBGLCBFTkdJTkVf
Q0xBU1MsIEdVQ19WSURFT0VOSEFOQ0VfQ0xBU1MpLA0KPiA+IEBAIC0xODIsNiArMTg0LDggQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBfX2d1Y19tbWlvX3JlZ19kZXNjcl9ncm91cCB4ZV9scGRfbGlz
dHNbXSA9IHsNCj4gPiAgIAlNQUtFX1JFR0xJU1QoeGVfbHBkX2dsb2JhbF9yZWdzLCBQRiwgR0xP
QkFMLCAwKSwNCj4gPiAgIAlNQUtFX1JFR0xJU1QoeGVfbHBkX3JjX2NsYXNzX3JlZ3MsIFBGLCBF
TkdJTkVfQ0xBU1MsIEdVQ19SRU5ERVJfQ0xBU1MpLA0KPiA+ICAgCU1BS0VfUkVHTElTVCh4ZV9s
cGRfcmNfaW5zdF9yZWdzLCBQRiwgRU5HSU5FX0lOU1RBTkNFLCBHVUNfUkVOREVSX0NMQVNTKSwN
Cj4gPiArCU1BS0VfUkVHTElTVCh4ZV9scGRfcmNfY2xhc3NfcmVncywgUEYsIEVOR0lORV9DTEFT
UywgR1VDX0NPTVBVVEVfQ0xBU1MpLA0KPiA+ICsJTUFLRV9SRUdMSVNUKHhlX2xwZF9yY19pbnN0
X3JlZ3MsIFBGLCBFTkdJTkVfSU5TVEFOQ0UsIEdVQ19DT01QVVRFX0NMQVNTKSwNCj4gPiAgIAlN
QUtFX1JFR0xJU1QoZW1wdHlfcmVnc19saXN0LCBQRiwgRU5HSU5FX0NMQVNTLCBHVUNfVklERU9f
Q0xBU1MpLA0KPiA+ICAgCU1BS0VfUkVHTElTVCh4ZV9scGRfdmRfaW5zdF9yZWdzLCBQRiwgRU5H
SU5FX0lOU1RBTkNFLCBHVUNfVklERU9fQ0xBU1MpLA0KPiA+ICAgCU1BS0VfUkVHTElTVCh4ZV9s
cGRfdmVjX2NsYXNzX3JlZ3MsIFBGLCBFTkdJTkVfQ0xBU1MsIEdVQ19WSURFT0VOSEFOQ0VfQ0xB
U1MpLA0KDQo=
