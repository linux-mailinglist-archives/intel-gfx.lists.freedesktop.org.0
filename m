Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9B83A2741
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 10:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3720B6EC83;
	Thu, 10 Jun 2021 08:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F26D36EC83;
 Thu, 10 Jun 2021 08:39:06 +0000 (UTC)
IronPort-SDR: 6Crir0YrJr9c4HdhGvWwbMz42aZDz3h00OZFC1ro1PLsUOqFBXS3tGlh458GnlqXbZWCaCoj5b
 P3wbbjWFSOGg==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="184945924"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="184945924"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 01:39:02 -0700
IronPort-SDR: UUrgIpz5ZF3AOaNuIa4tdMn7vNuZnO1Cq/gyiTMFe0+ZpiXI7KAClHUw+V/gZsysHzYmw6xyqN
 A6gUH2fNQP1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="448638342"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 10 Jun 2021 01:39:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 01:39:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 01:38:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 10 Jun 2021 01:38:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 10 Jun 2021 01:38:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTMmy8zSDpz8hwB7I/rWOp3rRznYWX4jHFWmQWeSskAYzU+Yz8VnpFoebJVg6yKYEYxRUDV5rJxU3RhtA+lNrqtbUPGhogb5oSFlkVnjXxhfzKMrfgmyoAgSo+zXT+XxHr4TWVx8DIe7Vgj3NNgxuIeE+WPZPYnsPkgKaxLDNNE9hBTl6RZ6XgQunax8dqkrexx+pEWA9wNtWom/fAngmD0zlg8PL1TOz3CgNWwmdD9UWBMsnkd3HwkJWFSMpEYNWPUldXqnORDnboU8qA7/+F9f7DOfmIBnmvHQb5T0+WkIZrJYH1aZ2FOtfNso6iiLSQGuOV9GpKTvIfJvAnSbEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hg3ZponPEJvP/NkeWVX5K8ohI2mzTYM0hYVx+7fwTZY=;
 b=g/8wMs/Mg4eSH81oLL6GapDn0lGNbSeFaveFtxJvvgvOQp0b+mZR8lJL9Ag/WaevXnsmPUES/Yucjt0yPY7PcuFeEaY/iAzV+dP6QD3gQSSDWa5zQvkS7mgprzFY67gcoNCLTIUMN+wNvhSubicbGj7kZdd57AZkwMYc8nLJO0ip+MPAyDsUD7YEVzkjiP3jm3Qt9n4OCKGicKmb9gLtqSXdzQOHc4w6KUHWl7vxT3D0l/qa72oP5w9tNqKYN/yetPpcbcTedlWR7wI0y7n3v2R8ZOrQpbbqAQDbCvCaDBaIME3G/2cYww/c2H0KheTgbsBwkuspcs3izMi/jnUpuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hg3ZponPEJvP/NkeWVX5K8ohI2mzTYM0hYVx+7fwTZY=;
 b=pYaTQdEd+clgpVaJs8CKngpouqPApIIlwFwXEa7dlWPdVyU97kou1Q8JRZjmtLWU3pqCyxkRLjOwAMNk0xz1H6poSYQ9yAe/LBwOk39NPIcDR+kZUAMJQP6RS9iKaMYhRS3Pc9MDsWfvvUc5LnQguFND4W0fxOEa2M+vhQXXqck=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by SJ0PR11MB4925.namprd11.prod.outlook.com (2603:10b6:a03:2df::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Thu, 10 Jun
 2021 08:38:42 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.030; Thu, 10 Jun 2021
 08:38:42 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>, "Modem,
 Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait
 for vblank before collecting CRC
Thread-Index: AQHXU3r+0BLlTn3Au0CMvXxolxn81qsJwWIAgAAI/oCAAAPTMIAAGIuggAArU4CAAussIA==
Date: Thu, 10 Jun 2021 08:38:42 +0000
Message-ID: <BY5PR11MB43727C61A55E03DA6EE2C53589359@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB55693230CBD2262DDCF5A0C18D379@CO6PR11MB5569.namprd11.prod.outlook.com>
 <80bed39a-e899-f211-ae2f-279312b52084@gmail.com>
 <BY5PR11MB4372F22C0AF1AEC2CD3A20D089379@BY5PR11MB4372.namprd11.prod.outlook.com>
 <BY5PR11MB437298B9B622322E6663495E89379@BY5PR11MB4372.namprd11.prod.outlook.com>
 <dc3df242-57b9-13f9-c5ab-42acadc39c86@gmail.com>
In-Reply-To: <dc3df242-57b9-13f9-c5ab-42acadc39c86@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8f0c85c-b4ba-42ef-f792-08d92beb2711
x-ms-traffictypediagnostic: SJ0PR11MB4925:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB4925DD8705C68AA7F31B3C4289359@SJ0PR11MB4925.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pMXFhYSkZFO4FN20a92llmp4IVcHuNdItLOHLj2E0HqWBTNoVRfLW1z1SCx2hyRqaZiyYgxs60Zt6CdrHKSZOVMNnDECPf1PALJG6a669rHNwWJbpNbycA5vtURpZYqKHWPnhhKc5S9tYSpUSET9ktSxxskdeVaxohzjiiy3LbI0JqxABwx5YtmEzX9H1FmQiX8JfMyzx+Y2wS8YOGEhPO343dsza+9FmelIVo82hoE4OYn8/5MO03LIFlk6sh01L76698Zb8qW4eA4uxEwTFhnomb69R/dwRuxsImJ6d5ut/KcvQt5wuviVVuy7BsAwSxusTLo4Y5+PraiwCHEVNptbw/GQ3APhVLAchz0BksZEgwS8QyeLGWjJ9pR2G/SCPIsy+WQE2jRbIIB8pk0vKHptdWs5EWIIlC2XgrSq6gLPIPsO/gVfkZEql77lZuxUosF3P4C4rDS77ZmkG4/QCgPkkOdUSo5sNbxYqXoosZcxPuz7XpGEkxh/DNjRV4D/Q4vcVnuTREghFt212jd8jHndLIiM3E3wDJAF2OPkU8ElX5zPlIDfMzSWVIFul2pwZYczlmOBHbIveNy+pkSaCfJJj6xyJOoswxbgMaW2mOUkqvPtasBYMn9/8RbJ3jL84fC3ill69KDs+jhECpPBjQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(366004)(376002)(39860400002)(396003)(2906002)(5660300002)(53546011)(9686003)(110136005)(7696005)(86362001)(186003)(66476007)(52536014)(4326008)(122000001)(83380400001)(6506007)(38100700002)(76116006)(55016002)(316002)(966005)(8936002)(33656002)(26005)(107886003)(71200400001)(66946007)(478600001)(66446008)(66556008)(64756008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OEZZVXFJRXdWVzRHMkxIb1pyWDh2SHJMT1RJZWk3dEYrakRwemNMdnRjRlY1?=
 =?utf-8?B?Rjlmd0V2Wld6K0pqdzZqQVQ3T1oxQUpQSTZNN1l4YkgydWFIbjFENyszK2VD?=
 =?utf-8?B?cWNwOWFmWTNncFZxUXcxM1Y2RmhRcVhPVzFUQ0JLNzY5aENya0E3VzZJK05Q?=
 =?utf-8?B?ZjI3WUhvV3hTNEx5c2pDNTl6WGYyNE91ZG1CbmVPMng1bms0T1NFREp1cEJS?=
 =?utf-8?B?QmZYTWRmRjczUngwVUttOU9KRGhkc1doYm41bHZhd1B4VUVYMGRMWEtwQkkv?=
 =?utf-8?B?M1c4amVzd21PT1dWQjFQZkJkQWdzZS9Qdy9ud2NjSDRHMVhidWZoY3hobEpP?=
 =?utf-8?B?SXNWMlJIdTJ1UnNvaEJiTjhGeDBUNHcybHZZUEhiNjgwVFFFS05hM0daV3Jq?=
 =?utf-8?B?RmZIS1BrTFZ0ZFRUVEdDdi9jWkl4L05QTVo0OTN0ZFhCdGJrWHpxNGFIUXRI?=
 =?utf-8?B?Wm44SktmNXUxRlo2eXZJdzljZWI4VFdKaDl6czFhTElVamY3RVpYODYyckU5?=
 =?utf-8?B?SVFTZVRXczE4RVc2UFhGQklwVmZNa2EyYmJGZjhWVFNkcXN1UXY5ZkVVZFZs?=
 =?utf-8?B?RlVYVVFXNDdQSEcvYUNVV0J4NHRZYVdHTVgvMXFqY2R1ekhGZVZvbHR4Y2li?=
 =?utf-8?B?QWJybE02MTBXK2l0UU5OejNNelZmUldjVzVneVpKbmVLNUtIR1FxRXI0c1pw?=
 =?utf-8?B?L0QyZHRZWlpwS3lueW9wRzBvUWlVM0k2dnlWWXYxMGVmUnFZbUJQQm81ZjRW?=
 =?utf-8?B?QTdqcGh2RHB2aVhNMmdzNmdSeWUrTVpVZ3pxaWxwOTRudzdrTm9WQk9kZVhk?=
 =?utf-8?B?WnphbVNGbEVnSEFNcCtkM2Jldm4wRlJaakQ2N1NweG52dWdMRGFyMVVhLzZV?=
 =?utf-8?B?S3laeUF0L3JHQ254YWJKMGgxWlRTbWF5d1owUHRLU2xhMTVIZXNUU29Fazhz?=
 =?utf-8?B?UnU4N3FJamwwWEJjcllCZXBzLzR0ZHE3ZTJ1VVJKenh2SVFoMm9mUGdVck5S?=
 =?utf-8?B?ZHY1WHlpdnVJLzVKQUtXTTFDQ0NIVXNSZlgrU0JkcDdwb2JBNVYzMDA0T3Zk?=
 =?utf-8?B?WERlakxLdjcyYmlXSXZlRmZoYlMySUFrZFVjV0hTdVYvd0ZnNEsvcmFwSUEw?=
 =?utf-8?B?Mlcrd2ptSnpGVkRFcStEM2lSSnZDRTZ6ZmtBdkdDeEVDUmR0cUtJdERmVS94?=
 =?utf-8?B?bVdFWXZRM3ZRV0U5TWdmd1doQXdDemFNTVJMUmcvQ240Vmw1aWVkQkwzNDdV?=
 =?utf-8?B?ZFlid0U4enpQZ3ViRTlxMEwxWU51R3kxblM4OTV1NVZieGpLdDhpdlBNMU1p?=
 =?utf-8?B?eG4yYmt2VVlBYXNodDZsUi9qWU1zbG1MMDBiSlhydEtJRElTWVpxRE1vVWQz?=
 =?utf-8?B?UVFZU2ZFWXU0Ukk4bXliSTY4UWFaTTFrcU5GUFhMMEZINXo0SDY1R1IrY2tG?=
 =?utf-8?B?eDIyVEtReVVTMXRrbkh2SHRSR2NqY3M1NldqSCszd01qeUhHSEdoQ0xtd2xu?=
 =?utf-8?B?OGxqaDVXdlFCOGU0b1VJL2VHTkxOTDQyZklFdnV3ZGgrVE9nSlBGNEVFTHZn?=
 =?utf-8?B?cEJSRkNJR2kzZ0FDWVIyQVVib1lFMzFSRERvNXBzUUJrcnp4R2dzeU92V0hW?=
 =?utf-8?B?cG03RFYrZGxKN0lyUnlmTjZjVDlnQ2pVbXQ3OHNIcDcxSlhPamtCY25zajF4?=
 =?utf-8?B?Um0vL3dEN1JNMW9PQW5jVWNIMGk0SlFqNFZOaEZSMzJtejFvTFZyNldIUk1T?=
 =?utf-8?Q?YLphTyjp2t32iVClj66oOFb8yNczk50dkL1HyLt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8f0c85c-b4ba-42ef-f792-08d92beb2711
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 08:38:42.1513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FX5lFnZs30W7stzJCfTZSN9PtbpyCYWv8u8ZJRsvuheSuV3HhLCAs2JH3ahjs6TiT7f8QCMqf1XQ/BGpeHGUqnHJ1gsboDuL7LHfGEZP6yk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4925
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC] tests/kms_big_fb:
 Wait for vblank before collecting CRC
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
Cc: "Lin, Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8gSnVoYS1QZWtrYSwNCg0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy85MDM4OS8jcmV2NyBzaG93cyBQQVNTIGZvciBhbGwgQ0kuDQpIb3dldmVyIEkgZG9u4oCZ
dCBzZWUga21zX2JpZ19mYiBhbGwgdGhlIHN1YnRlc3RzIHJ1bm5pbmcgaW4gQ0kuIEluIHRoZSBs
b2dzIEkgc2VlIHBhc3MgZm9yIGxpbmVhci0zMmJwcC1yb3RhdGUtMA0KDQpNYXkgSSBpbmNsdWRl
IHlvdXIgUmV2aWV3ZWQgYnkgdG8gdGFrZSBpdCBmdXJ0aGVyPyBQbGVhc2Ugc3VnZ2VzdC4gVGhh
bmsgeW91IHNvIG11Y2guDQoNClJlZ2FyZHMNClZpZHlhDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQpGcm9tOiBKdWhhLVBla2thIEhlaWtraWxhIDxqdWhhcGVra2EuaGVpa2tpbGFAZ21h
aWwuY29tPiANClNlbnQ6IFR1ZXNkYXksIEp1bmUgOCwgMjAyMSA1OjIxIFBNDQpUbzogU3Jpbml2
YXMsIFZpZHlhIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+OyBNb2RlbSwgQmhhbnVwcmFrYXNo
IDxiaGFudXByYWthc2gubW9kZW1AaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZzsgaWd0LWRldkBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBMaW4sIENoYXJsdG9u
IDxjaGFybHRvbi5saW5AaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IFtpZ3QtZGV2XSBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggaS1nLXRdIFtSRkNdIHRlc3RzL2ttc19iaWdfZmI6IFdhaXQgZm9yIHZibGFu
ayBiZWZvcmUgY29sbGVjdGluZyBDUkMNCg0KT24gOC42LjIwMjEgMTIuMTksIFNyaW5pdmFzLCBW
aWR5YSB3cm90ZToNCj4gSGVsbG8gSnVoYS1QZWtrYQ0KPiANCj4gSW5zdGVhZCBvZiB3YWl0IGZv
ciB2YmxhbmssIHRoaXMgYWxzbyB3b3JrcyBpZ3RfcGlwZV9jcmNfc3RhcnQtPiANCj4gaWd0X3Bp
cGVfY3JjX2dldF9jdXJyZW50IGZvciBzbWFsbCBmYiBhZnRlciBjb21taXQgLT4gdGhlbiANCj4g
aWd0X3BpcGVfY3JjX2dldF9jdXJyZW50IEZvciBiaWcgZmIgLT4gY29tcGFyZSAtPiBpZ3RfcGlw
ZV9jcmNfc3RvcA0KPiANCj4gV291bGQgdGhpcyBjaGFuZ2UgYmUgb2theT8gS2luZGx5IHN1Z2dl
c3QuIGlndF9waXBlX2NyY19jb2xsZWN0X2NyYyBpcyANCj4gbm90IHdvcmtpbmcuIEl0IGdpdmVz
IENSQyBtaXNtYXRjaCBmb3IgZmV3IHN1YnRlc3RzIGxpa2Ugc3VidGVzdCANCj4geS10aWxlZC0z
MmJwcC1yb3RhdGUtMA0KDQpUaGlzIGNoYW5nZSBpcyBvay4gSXQga2luZCBvZiBpbXBsaWVzIHRo
ZXJlIG1heWJlIGlzIHNvbWUgcHJvYmxlbSBvbiB5b3VyIHBsYXRmb3JtIHdpdGggc3RhcnRpbmcg
b2YgY3JjIGNhbGN1bGF0aW9uIGJ1dCBpZiB0aGlzIGlzIG9ubHkgcGxhY2Ugd2hlcmUgaXQgd2ls
bCBzaG93IEknbSBvayB3aXRoIHRoYXQgc2luY2UgY3JjIHdpbGwgbm90IGFmZmVjdCBub3JtYWwg
dXNlcnMgaW4gYW55IHdheS4NCg0KSSBub3RpY2VkIHlvdXIgbmV3IHBhdGNoLCBsZXRzIHNlZSBo
b3cgYWxsIGNpIG1hY2hpbmVzIGJlaGF2ZSBvbiB0aGF0IGJlZm9yZSBkb2luZyBhbnl0aGluZyBl
bHNlLg0KDQovSnVoYS1QZWtrYQ0KDQo+IA0KPiBIYXZlIHN1Ym1pdHRlZCB0aGUgY2hhbmdlIGhl
cmUgDQo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC80Mzc2NTcvP3Nl
cmllcz05MDM4OSZyZXY9Ng0KPiANCj4gVGhhbmsgeW91IHNvIG11Y2guDQo+IA0KPiBSZWdhcmRz
DQo+IFZpZHlhDQo+IA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTcmlu
aXZhcywgVmlkeWENCj4gU2VudDogVHVlc2RheSwgSnVuZSA4LCAyMDIxIDE6MTkgUE0NCj4gVG86
IGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb207IE1vZGVtLCBCaGFudXByYWthc2ggDQo+IDxC
aGFudXByYWthc2guTW9kZW1AaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgDQo+IGlndC1kZXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBMaW4sIENoYXJs
dG9uIDxDaGFybHRvbi5MaW5AaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSRTogW2lndC1kZXZdIFtJ
bnRlbC1nZnhdIFtQQVRDSCBpLWctdF0gW1JGQ10gDQo+IHRlc3RzL2ttc19iaWdfZmI6IFdhaXQg
Zm9yIHZibGFuayBiZWZvcmUgY29sbGVjdGluZyBDUkMNCj4gDQo+IEhlbGxvIEp1aGEtUGVra2Eg
YW5kIEJoYW51DQo+IA0KPiBUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcgY29tbWVudHMuIEFwb2xv
Z2llcyBKdWhhLVBla2thLCBJIHdpbGwgaW5jb3Jwb3JhdGUgeW91ciByZXZpZXcgY29tbWVudHMg
YW5kIHRyeSBvdXQuDQo+IA0KPiBSZWdhcmRzDQo+IFZpZHlhDQo+IA0KPiANCj4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSnVoYS1QZWtrYSBIZWlra2lsYSA8anVoYXBla2th
LmhlaWtraWxhQGdtYWlsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgSnVuZSA4LCAyMDIxIDE6MDQg
UE0NCj4gVG86IE1vZGVtLCBCaGFudXByYWthc2ggPGJoYW51cHJha2FzaC5tb2RlbUBpbnRlbC5j
b20+OyBTcmluaXZhcywgDQo+IFZpZHlhIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyANCj4gaWd0LWRldkBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gQ2M6IExpbiwgQ2hhcmx0b24gPGNoYXJsdG9uLmxpbkBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFJlOiBbaWd0LWRldl0gW0ludGVsLWdmeF0gW1BBVENIIGktZy10XSBbUkZDXSANCj4g
dGVzdHMva21zX2JpZ19mYjogV2FpdCBmb3IgdmJsYW5rIGJlZm9yZSBjb2xsZWN0aW5nIENSQw0K
PiANCj4gT24gOC42LjIwMjEgMTAuMDEsIE1vZGVtLCBCaGFudXByYWthc2ggd3JvdGU6DQo+Pj4g
RnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+
IE9uIEJlaGFsZiANCj4+PiBPZiBWaWR5YSBTcmluaXZhcw0KPj4+IFNlbnQ6IEZyaWRheSwgTWF5
IDI4LCAyMDIxIDk6NTcgQU0NCj4+PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZzsgaWd0LWRldkBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4+PiBDYzogbWFya3lhY291YkBjaHJv
bWl1bS5vcmc7IExpbiwgQ2hhcmx0b24gPGNoYXJsdG9uLmxpbkBpbnRlbC5jb20+DQo+Pj4gU3Vi
amVjdDogW0ludGVsLWdmeF0gW1BBVENIIGktZy10XSBbUkZDXSB0ZXN0cy9rbXNfYmlnX2ZiOiBX
YWl0IGZvciANCj4+PiB2YmxhbmsgYmVmb3JlIGNvbGxlY3RpbmcgQ1JDDQo+Pj4NCj4+PiBXaXRo
b3V0IHdhaXQgZm9yIHZibGFuaywgQ1JDIG1pc21hdGNoIGlzIHNlZW4gYmV0d2VlbiBiaWcgYW5k
IHNtYWxsIA0KPj4+IENSQyBvbiBmZXcgR2VuMTEgc3lzdGVtcy4NCj4+Pg0KPj4+IFNpZ25lZC1v
ZmYtYnk6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+DQo+Pj4gLS0t
DQo+Pj4gICAgdGVzdHMva21zX2JpZ19mYi5jIHwgNiArKysrLS0NCj4+PiAgICAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdp
dCBhL3Rlc3RzL2ttc19iaWdfZmIuYyBiL3Rlc3RzL2ttc19iaWdfZmIuYyBpbmRleA0KPj4+IGIz
NTcyN2EwOWJkMC4uZjkwMzYzYzNiZWIyIDEwMDY0NA0KPj4+IC0tLSBhL3Rlc3RzL2ttc19iaWdf
ZmIuYw0KPj4+ICsrKyBiL3Rlc3RzL2ttc19iaWdfZmIuYw0KPj4+IEBAIC0yNTQsNiArMjU0LDcg
QEAgc3RhdGljIHZvaWQgdW5zZXRfbHV0KGRhdGFfdCAqZGF0YSkNCj4+PiAgICBzdGF0aWMgYm9v
bCB0ZXN0X3BsYW5lKGRhdGFfdCAqZGF0YSkNCj4+PiAgICB7DQo+Pj4gICAgCWlndF9wbGFuZV90
ICpwbGFuZSA9IGRhdGEtPnBsYW5lOw0KPj4+ICsJaWd0X2Rpc3BsYXlfdCAqZGlzcGxheSA9ICZk
YXRhLT5kaXNwbGF5Ow0KPj4NCj4+IEZvciBjb2RlIHJlYWRhYmlsaXR5IHB1cnBvc2UsIEkgdGhp
bmsgd2UgbmVlZCB0byB1cGRhdGUgdG8gdXNlIHRoaXMgDQo+PiB2YXJpYWJsZSB3aGVyZXZlciB3
ZSBhcmUgdXNpbmcgIiZkYXRhLT5kaXNwbGF5IiBpbiB0aGlzIGZ1bmN0aW9uLg0KPj4gcy8iJmRh
dGEtPmRpc3BsYXkiLyJkaXNwbGF5Ii8NCj4+DQo+PiBXaXRoIGFib3ZlIGNoYW5nZSwgdGhpcyBw
YXRjaCBMR1RNDQo+PiBSZXZpZXdlZC1ieTogQmhhbnVwcmFrYXNoIE1vZGVtIDxiaGFudXByYWth
c2gubW9kZW1AaW50ZWwuY29tPg0KPj4NCj4gDQo+IEkgc3RpbGwgZG9uJ3Qgc2VlIGJlbmVmaXQg
aW4gdGhpcyBwYXRjaC4gRm9yIG5vdyBhbGwgdGhpcyBsb29rIGxpa2UgaXMgZG9pbmcgaXMgc2xv
dyBkb3duIHRoZSB0ZXN0IGFuZCBpZiB0aGlzIGFjdHVhbGx5IGhlbHBzIHRoZXJlJ3MgYSByZWFs
IGJ1ZyBzb21ld2hlcmUgd2hpY2ggaXMgbm90IGhlcmUuIE15IGVhcmxpZXIgcmV2aWV3IGNvbW1l
bnRzIHdlcmUgbm90IGFkZHJlc3NlZCBoZW5jZSByZXBlYXQgaGVyZSwgc2VlIGJlbG93Lg0KPiAN
Cj4gDQo+Pj4gICAgCXN0cnVjdCBpZ3RfZmIgKnNtYWxsX2ZiID0gJmRhdGEtPnNtYWxsX2ZiOw0K
Pj4+ICAgIAlzdHJ1Y3QgaWd0X2ZiICpiaWdfZmIgPSAmZGF0YS0+YmlnX2ZiOw0KPj4+ICAgIAlp
bnQgdyA9IGRhdGEtPmJpZ19mYl93aWR0aCAtIHNtYWxsX2ZiLT53aWR0aDsgQEAgLTMzNywxNiAr
MzM4LDE3IA0KPj4+IEBAIHN0YXRpYyBib29sIHRlc3RfcGxhbmUoZGF0YV90ICpkYXRhKQ0KPj4+
ICAgIAkJaWd0X2Rpc3BsYXlfY29tbWl0MigmZGF0YS0+ZGlzcGxheSwgZGF0YS0+ZGlzcGxheS5p
c19hdG9taWMgPw0KPj4+ICAgIAkJCQkgICAgQ09NTUlUX0FUT01JQyA6IENPTU1JVF9VTklWRVJT
QUwpOw0KPj4+DQo+Pj4gLQ0KPj4+ICsJCWlndF93YWl0X2Zvcl92YmxhbmsoZGF0YS0+ZHJtX2Zk
LA0KPj4+ICtkaXNwbGF5LT5waXBlc1tkYXRhLT5waXBlXS5jcnRjX29mZnNldCk7DQo+IA0KPiBB
Ym92ZSB0aGlzIGxpbmUgdGhlcmUncyBmbGlwIHRvIGRpZmZlcmVudCBmYi4gQmVsb3cgdGhpcyBs
aW5lIGNyYyBjYWxjdWxhdGlvbiBpcyByZXN0YXJ0ZWQsIGdldCBvbmUgY3JjIGFuZCBzdG9wIGNy
Yy4gVGhlcmUncyBzZXZlcmFsIHZibGFua3MgYWxyZWFkeSBzcGVudCBoZXJlLCBpZiBub3cgYWRk
aW5nIG9uZSBtb3JlIHNvbWVob3cgaGVscHMgaXQgc291bmQgbGlrZSB0aGVyZSdzIHByb2JsZW1z
IGluIGNyYyBjYWxjdWxhdGlvbiBvbiBzb21lIHBsYXRmb3JtIG9yIGtlcm5lbCBpcyBzYXlpbmcg
dG9vIGVhcmx5IGZyYW1lYnVmZmVyIGlzIHJlYWR5IHRvIGJlIHNob3duLiBBbSBJIG1pc3Npbmcg
c29tZXRoaW5nIGhlcmU/DQo+IA0KPiAvSnVoYS1QZWtrYQ0KPiANCj4+PiAgICAJCWlndF9waXBl
X2NyY19jb2xsZWN0X2NyYyhkYXRhLT5waXBlX2NyYywgJnNtYWxsX2NyYyk7DQo+Pj4NCj4+PiAg
ICAJCWlndF9wbGFuZV9zZXRfZmIocGxhbmUsIGJpZ19mYik7DQo+Pj4gICAgCQlpZ3RfZmJfc2V0
X3Bvc2l0aW9uKGJpZ19mYiwgcGxhbmUsIHgsIHkpOw0KPj4+ICAgIAkJaWd0X2ZiX3NldF9zaXpl
KGJpZ19mYiwgcGxhbmUsIHNtYWxsX2ZiLT53aWR0aCwgDQo+Pj4gc21hbGxfZmItPmhlaWdodCk7
DQo+Pj4gKw0KPiANCj4gc3B1cmlvdXMgZW1wdHkgbGluZSBuZWVkIHRvIGJlIHJlbW92ZWQuDQo+
IA0KPj4+ICAgIAkJaWd0X3BsYW5lX3NldF9zaXplKHBsYW5lLCBkYXRhLT53aWR0aCwgZGF0YS0+
aGVpZ2h0KTsNCj4+PiAgICAJCWlndF9kaXNwbGF5X2NvbW1pdDIoJmRhdGEtPmRpc3BsYXksIGRh
dGEtPmRpc3BsYXkuaXNfYXRvbWljID8NCj4+PiAgICAJCQkJICAgIENPTU1JVF9BVE9NSUMgOiBD
T01NSVRfVU5JVkVSU0FMKTsNCj4+PiAtDQo+Pj4gKwkJaWd0X3dhaXRfZm9yX3ZibGFuayhkYXRh
LT5kcm1fZmQsDQo+Pj4gK2Rpc3BsYXktPnBpcGVzW2RhdGEtPnBpcGVdLmNydGNfb2Zmc2V0KTsN
Cj4+PiAgICAJCWlndF9waXBlX2NyY19jb2xsZWN0X2NyYyhkYXRhLT5waXBlX2NyYywgJmJpZ19j
cmMpOw0KPj4+DQo+Pj4gICAgCQlpZ3RfcGxhbmVfc2V0X2ZiKHBsYW5lLCBOVUxMKTsNCj4+PiAt
LQ0KPj4+IDIuNy40DQo+Pj4NCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4+PiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+Pj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+PiBpZ3QtZGV2IG1haWxpbmcgbGlzdA0KPj4gaWd0LWRl
dkBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaWd0LWRldg0KPj4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
