Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A44C2632DC3
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 21:18:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C34010E109;
	Mon, 21 Nov 2022 20:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 580A510E109
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 20:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669061890; x=1700597890;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=8SsnMAvZRNtBeJTOkUF9MKx0EOxLES4K+Tyi1o5qiFs=;
 b=MFYsx+4+Kzs0W9KV9+UNJRPH6Bvu8ppBlcQhldMsR0JEDMZGNcu6aWKn
 FEQ+9Fyj9veLvesMKoQwE69CxBznQPuIuw5PaKt4dIPtAl/2G4ND0cgz+
 Yi268aX4dGGE6lpkfincZLdkKwR5hNz99guXWKzc8qU27OL3gPoG1w/Z1
 CEL6nYZo6YugeZ3rGeLYtLJqD2c1+c9v5vhxC4mUHd0UGDrYAc0rly9nj
 Cx5v/RE9A/tY4Q/swpSIbC57p5jKQPRYutMYb33MhIz7vpSEsC3238xe2
 LhcLJV3mTTZPU0rMA+Ot6crnII5AoY2OKrb7EQOrd6yhKBYtg/pVhCLrS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="314803579"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="314803579"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 12:18:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="591890566"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="591890566"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 21 Nov 2022 12:18:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 12:18:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 12:18:09 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 12:18:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SN3aMn6wJg8YgOe6S1AliN/nguetkE3VoChs/Uyu4DDw/FWkIpOqzuvG4485v+o5nzkREPDTXJV6jqJE2FYshSUcdHOXuSskjMlzbcxpvuZzzHlEmj8JMNjW+3MFFCbsze+R1QJd+AkC8iIAr44Bi9P+OUYEnZDbRKbYdL7dpl/s0GhF9GchI+DBWMtvCK8i51B7XCaDecV3SBWI0P1Jy3FSOr6sKKi4ApXXOuKh5Xi7z9953L6f+qBfAojifPvKXlOmdpyOXVwkZ6Rvcr6bLx3lhirPsc3mySqDJc+jlG6sUVQrPdrA41fEhAms7aPtOl3riKiqUchfycR0z78qdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8SsnMAvZRNtBeJTOkUF9MKx0EOxLES4K+Tyi1o5qiFs=;
 b=e+Nsr2P6H3AnRgU63qcBQ51sSRhHjLr2crMyIqmw4n/eIyaR65sSV/o/IkoCiCiHRe95AeAvQscD9POMnaqtUZvAHlwdnqocI2bD7DkOvoUFnejCyz4ECLaXUdYqqGAv6Tdw0DUiGS7A2vMhpNXXFqCS1ToP5TEC7aH06e/FlxSw2o28VoJcdFS/6sXIDn4gSwsw+IUvAN+t9tmdyJfaqP3jCihvlulvi4KkmEJEe0EZO8paTDvbjkoQoA6JXKOIGzCXQo/LBNR6UwqPYkWs4BRscUoOtg4VI38ZJy1IhJvuOEQLI/gKqpNxRHgkm7IxwBporiIUIpWZvoId4/RqSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by PH7PR11MB7004.namprd11.prod.outlook.com (2603:10b6:510:20b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 20:18:06 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::7b12:fb54:4d52:fa3f]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::7b12:fb54:4d52:fa3f%7]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 20:18:06 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Thread-Topic: i915 Updates: MTL DMC v2.10
Thread-Index: AQHY/eZdDes9L+ds90qF+NGFG9+Xuw==
Date: Mon, 21 Nov 2022 20:18:06 +0000
Message-ID: <f032c2336ca7c60deb53fbbbaab1c60f896bfe7d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1 (3.46.1-1.fc37) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5169:EE_|PH7PR11MB7004:EE_
x-ms-office365-filtering-correlation-id: e8fb9b38-03c9-4216-de2d-08dacbfd803d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HUy9JSEenBEPHbdxNeeeOTcYnTrvUSdaVON44G+jlzliTnWtX2m11K83QKYajMm3MZMwQO3aTeUaqm8AOLanvkNFYBNwVnFk8l6OOwtUfje8cFOQofLLfHPeqjx47+D+YThCttYlo3V4lpK3YcqLUiAWtxt9nKcncT0zyhoG62zLFrwCnirnByC0YEuZxd9uQhSIPmF/xPFkDmiqWaI4b/KyLMEF8ufK7JpICS8IdR4945sveet1TML1D4vs+Bw/WC1UcyxOGZWmel6hKkdinmV3Vhypqv+OBycN2E0Srt/YPMfIs/49Y95/wmYsl+Za+d9SCJ+0xVM4F9WTcj1yi0EP4NnTbf+XRbIAj3ssR7B8af9XDmD0yAf/n70cvG/5yTeCfJF7Vq+1oH+LNgJuEA/gmnvK9p/WLUnr372aVfaRxVtaOWx1jfIdHBOPFLFwvmkFYjDTMHYj0GsHxq/gEgrp0h6EU0kpKn8EJ0pWrnFykLBZBp+Bi4D4F5ENrLoSJhKOT+W5OEnjpiC42IyVh6bChnVSs0MoWfKMyZOXhfLdm+PP9PpInDL0iU8zje4pCEvYjI6oP5cFDja06SMi2oY217baaXsAwsI0MAMhUefar9yoz7R08XpXU9ZuZyiKhwGhLIvlxHKM7Vu5pj7RZYNjRvfegv2nVXvRn5V2Eh1VK18J9qauD+TXoqj+iCshN7tzPsrg9BA1yQKvkfMV/w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(396003)(346002)(136003)(451199015)(2906002)(38070700005)(2616005)(186003)(26005)(478600001)(76116006)(66556008)(6512007)(66946007)(6506007)(4326008)(5660300002)(316002)(38100700002)(64756008)(8676002)(6916009)(66476007)(66446008)(91956017)(36756003)(15650500001)(8936002)(6486002)(122000001)(83380400001)(82960400001)(86362001)(41300700001)(54906003)(4001150100001)(71200400001)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cS9obmdja1JkSGtzRXNncGJsamMrVzRyWkZ0bS8zNTJjZVN1bnk0VDArUXpl?=
 =?utf-8?B?RW9iK2NuZWk0bitlV21RMjZFSFBWa1VOMHhxakdQSFNjd0dvbGYyZnlKYWlU?=
 =?utf-8?B?ZitqMDlXZjg5Q1VzWXlQaVYwcUNsV1pVZWpLekc5cXRFYWwySENFZXRHYnNR?=
 =?utf-8?B?THFaa1BjcnpwbUQ1eENReEFwS21kTFhxVGNJTWNDcmx3ODh5ejI4MUcvd2NO?=
 =?utf-8?B?V3RDNm5JYmYzY3E3dTFXSnI3YjVZcHBXeUVncnM3MUl3SW5jdlpUcWwwN0RJ?=
 =?utf-8?B?a3dYV3ZHWDNMWUNOcEVpTEkrZmJlS2JWSkM2OTBhdmRlVXNvdENNWDZ3d3F4?=
 =?utf-8?B?a0M5VTl6SlNwSVhwalpKZHNUSFcxcmUxSG5GelhCczlSekgvdCtGWU1MK2h0?=
 =?utf-8?B?OVptVEtrMWhDOFVGdk1GbXVPZ2puTUVOc0x1a2Y4UXZIK0FaOEsyUmRmRUk0?=
 =?utf-8?B?amFpa1lyT3lpUmFJK1lRUWhJWG1iUmwvNThCNmtRU0wzMXQ1UldxcHhsZGFs?=
 =?utf-8?B?NnYwTUNITll1U2xCY20wTzR0THRsdWFkM1dQMUxnU2crTVZ6MVNqc2ZGb2I4?=
 =?utf-8?B?cUR0VEdrL0Q1dWVDcEw0dkZCRHJpTlhhTjVPOWhrVHJwSkpTSHByUm9yWWdT?=
 =?utf-8?B?VDFoaC9aVXJpanQ4Q0NvYk9Ia1hPK3pyTE1Ed1ErcGtTbUo5ZGdPVW1WV215?=
 =?utf-8?B?VHNmKzRBclR5ZHFBRkRYYW13ZTZiRDlTZ1BhcmRwalg4MGxMdVJaSENQM0Vs?=
 =?utf-8?B?dU5MOFBZY1Y1aTMvV01tazcyUi93SVZMRzF4TENIY1JqRDEzWnlEbE9VUm9i?=
 =?utf-8?B?M1lCcGFIaWFpSWtudEhtWSs5V0VIZVhhL3dqUEVnTFZhanU4NzA4YUVUOWhD?=
 =?utf-8?B?Q2l6Y2NjeEVKM0x3empUOUkwczNYUWFiOE5xRkJVL3JuWFY0djA2NWhFUUMy?=
 =?utf-8?B?ZGlTcXkvdkY3TUJqeDh1Z3NlUkFzL0h1eEZvLytLK1JsLzBOYkdGMkVJQzJU?=
 =?utf-8?B?ZlpOdlNQRFNuNFczdnZrUHRRM3NuMEtUelJHMkNuWFRxVGxhN3oyclF1ekg3?=
 =?utf-8?B?eVJxYy9MYm9ETDJqQW9WbTVqZDNTMldQZVp0VC9iTi8yaFZiaHdDYWt0MU85?=
 =?utf-8?B?Z3RHVitUSXBFbTZGWnpTQit0V2ZJR0NqRFRsVjhsclZLMnRsR1N0c1JXTHVa?=
 =?utf-8?B?Rm84ZG5yekRCYWRFYzFlZFBhNXZ2clVscDBvLzZXSXdVN25hRWhzRzJ6WHRI?=
 =?utf-8?B?eVhZYXB3Q3R2Zy9tblJIajF6WjlOVk9ZTDVUV2wwQkpJMUZyaml4QnRRZFpn?=
 =?utf-8?B?SVkydWxTMGkyWVorRUNPNlZ5RWlwbXAxdHk1NGRIRjQxYXZvMURXM0xlVUFU?=
 =?utf-8?B?a3RCdStmeWYrVXQ4Y0lhbExJakVUTlFRYUhWM0lPT1FXWU1UM2s4Z3NEb3gw?=
 =?utf-8?B?aDJ2QlBOUlZkRXE3Qk9ETXZ0dnpGU3hObDV6S3ljL044MmxFNnA1b1lsTXZs?=
 =?utf-8?B?RzdtWUs4ajlOeHpEUVVOWUh0MmdNSFhTWnRsazlIcXBJTjdDQlBxNmpnVWov?=
 =?utf-8?B?OFNObVJXQ0dJc0ZNbWg4a2w5VEdWTnhScXM5ODQ2UFRZWjZzc2JqME45U2hC?=
 =?utf-8?B?UC9JUzRpWHdZOUxjR1JrcXdiVDdGVVFyOVpzSFZ6bEY2cmVjMUUxcUNMUEtj?=
 =?utf-8?B?V0tST2MrdkN0d2Ewc04vNWNVMTU0V0VSKzRGQ1N1VlF1dlU2bzFELzRSWFVp?=
 =?utf-8?B?UHk4RGhSRmRnZTVJRktvMVhGbHVydGVCT25zcFNFRTIrMUtCSjNoVHNMVWNU?=
 =?utf-8?B?NzRCbVVIZ2FKRnZETkVwbWR6cEs0NUVkbFpVandTQTBKZURJbW40N0ZFa21l?=
 =?utf-8?B?VmVlYWJjM29OWDBFa0FGS0dGaFdVc3l6TXpsd3YwOEZuR1p3VDZORkd6VVp1?=
 =?utf-8?B?MmpuTUx3Y295bmFJUWltTm5OUy9PYitvV3lmbGQwS1hGQjNqd2NjbHA0VUpw?=
 =?utf-8?B?MlZhWW03MStjd3NZeG4zR09QbEk5K3pEeXRxSEZKMmpSRGRRanhiZUptU2I5?=
 =?utf-8?B?anFmQzM3QTYySlk0WFh5VXBZM1FLdXMxUSsxSW9VNE15S0FhOU1RelVVMUVD?=
 =?utf-8?B?YmFObmQ1RnFNY0JleEtiN0k1M2c1VkRoNTNyV2Z0NHVnUDVuOFc1cWJraWJH?=
 =?utf-8?B?N0RMM1c3UUlZMzJFaWhoWDNhOXF3cWZQd2Y3MmNoMlBLWXlOSVFyeXZ4cHV2?=
 =?utf-8?B?NEh1SVB2NTd1aWc2dmw5STFLNTRnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B8739807F306424390B27DE735D9C274@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8fb9b38-03c9-4216-de2d-08dacbfd803d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 20:18:06.4892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: duh5qTu+vSvVL7znFFL0gpBVvfCHad4zwvQDg1bNVntJ2scKw1K/vzrUsWcpfLPAl3uPuPNp32Tlc7afHMGsfiVFpE+tZNlTDIoB2Gfv9aa1WyXAoQYzRil/jI5WFaB1pg5/yFZZCkFuY3kfDlBJJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7004
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] i915 Updates: MTL DMC v2.10
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
Cc: "kyle@mcmartin.ca" <kyle@mcmartin.ca>,
 "jwboyer@kernel.org" <jwboyer@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hutchings, Ben" <ben@decadent.org.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBkYWZmNDA0OTJiZDBjZDA3MWM3ZjU1
MjFiMzM5ZTEyZTRkZTcxOGMxOg0KDQogIGxpbnV4LWZpcm13YXJlOiB1cGRhdGUgZmlybXdhcmUg
Zm9yIE1UNzk4NiAoMjAyMi0xMS0xNiAwODo1MzoyOCAtMDUwMCkNCg0KYXJlIGF2YWlsYWJsZSBp
biB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6DQoNCiAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5v
cmcvZHJtL2RybS1maXJtd2FyZSBtdGxfZG1jX3YyLjEwDQoNCmZvciB5b3UgdG8gZmV0Y2ggY2hh
bmdlcyB1cCB0byBkZTg1NGM5NmRmNjZiZTRhMTNmOGJmYmIxZTc4YmQ1ZDBjZWEyZThlOg0KDQog
IGk5MTU6IEFkZCBETUMgdjIuMTAgZm9yIE1UTCAoMjAyMi0xMS0xNiAxNDoyNjowNiAtMDgwMCkN
Cg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQ0KTWFkaHVtaXRoYSBUb2xha2FuYWhhbGxpIFByYWRlZXAgKDEpOg0KICAgICAg
aTkxNTogQWRkIERNQyB2Mi4xMCBmb3IgTVRMDQoNCiBXSEVOQ0UgICAgICAgICAgICAgICAgICAg
fCAgIDMgKysrDQogaTkxNS9tdGxfZG1jX3ZlcjJfMTAuYmluIHwgQmluIDAgLT4gNDgxMTIgYnl0
ZXMNCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0
NCBpOTE1L210bF9kbWNfdmVyMl8xMC5iaW4NCg0K
