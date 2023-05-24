Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E01770FC70
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 19:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE3910E4DE;
	Wed, 24 May 2023 17:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38C510E4DE
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684948553; x=1716484553;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ZvX/3XwI2EB/XZeRTOrBNOMb0g602MsqhYyftjxjJto=;
 b=X9LmEGryIGC+lAxwQ00r7xz+JENhXoVayBm75Soa71yLAbwkoQ+KMjMy
 3gh04VQgsVtH4cBDou1JSXemDQz036DsDgG3b7DqkOHcbzcEVDnHfbgZ9
 1nQdq0klNDE3pmYS4puZ5DxJWEPg5UBAzTlsqfr/ttNx3IzV5PcWlgXxX
 5suzM8IqLdJSJR1WHCIegWgrjFdzgh+aRff3OeQCjKyfLqYuEAOOt1QMd
 AJxWJJiD50eUpXvyKQiEb/CU4mE20u3U3Nn1yqCZ0JjsnQ4qO82NApkWh
 U1vXyilLIQMJgoQhG1Toa7HsiM+iban96JIxbRHyPzmk4dConDZglci+d w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="352479960"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="352479960"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 10:15:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="794286768"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="794286768"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2023 10:15:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 24 May 2023 10:15:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 24 May 2023 10:15:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 24 May 2023 10:15:50 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 24 May 2023 10:15:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezKJT4FvDyWBJLeOAhdwTGjX87Gke+oL2ZN9pOTkokdn5HUvDSh+4Z68hPX5uueitjyDO1F8IfEUKeoCkSSGzc7p3WCm9LqD4nMpZbxj4ZphntARVHkTcfXVuxwNwJ/eYRrzA7+3FIOJiJRZNJgx3DhnJkmznvE3bTRUcZke/ayCaGIkXIO1ECGgrZYSGk+kapkfpWkXYzLkinR+J5WDm3wNlsP+gR5rWEq/LV/gdPseA9KuGqCLevJcxAEVg5yL7RPMq4Cs7HNARtnS+cjV2+r/eXCLV2nuDwz7WqQ7cvZez9HVxxVsxuVMddkpDZrFjplLoNEmcuLiwKH1jXuuAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZvX/3XwI2EB/XZeRTOrBNOMb0g602MsqhYyftjxjJto=;
 b=Fpgk3k0cnUxDMFgc8qsCjbKF7hUqA8F2RHxTcELZioM5cARKax+e46voJF9uRrazC0Rz9G1j9/sWu5PoTqXlkmeTONn45oiYW/zayt78VCUSL/u66y7Krme9ixIANkqo+uTQO1vF+mMewfKJYmpP5agzcGzyk6f86FEYmnreuOX39nOnfzx24i9X3/tH/EmwR7ogIP1faDDtZo+che7+xeWMXLT5sMEHX/VLhuwDvDnbWQ98XVLB7UIgmF9MnBEqC2BY83E7iprwpdMMbmQwveiPP7BwssbBdrZsPN/94c/fmCKTf6X6AJP8B29zzRvlmUyBcYxtX/GRlKxu2cAoIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB5032.namprd11.prod.outlook.com (2603:10b6:510:3a::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.15; Wed, 24 May 2023 17:15:49 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3%7]) with mapi id 15.20.6411.028; Wed, 24 May 2023
 17:15:49 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?B?MTUvc2VsZnRlc3QvZ3NjOiBFbnN1cmUgR1NDIFByb3h5IGluaXQgY29tcGxl?=
 =?utf-8?Q?tes_before_selftests?=
Thread-Index: AQHZhVcgvuNZimpN3E+dwrYbG34ws69pvBMA
Date: Wed, 24 May 2023 17:15:48 +0000
Message-ID: <7cdc4111c1a258b54952677339592dab41dee728.camel@intel.com>
References: <20230512235824.1399566-1-alan.previn.teres.alexis@intel.com>
 <168395370244.18763.18231456137293123019@emeril.freedesktop.org>
In-Reply-To: <168395370244.18763.18231456137293123019@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH0PR11MB5032:EE_
x-ms-office365-filtering-correlation-id: 3eaba5a1-d736-4c5a-7c20-08db5c7a84f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5TnrM1nnlU+BFEZJ6OKO5vrGrt4+RsQBCgZ8hujHMooUctJPH4UHt8XVg5YyTAq03nL4bUaaA1IoacTTu/Xy3xtfdWH6gRWeCX/RkFfoNnP+h+XW17KLqcbptzsr8CymLHNc0974CmjGwtEENiEo5suL+IrzDiBq7nGnHe/eCXIkkDqwxpQoaOEh4rabQuWFLyPS53rkhVmdMJ2jIBNs5kpE8nKQoFcW9j2+diljkPVhvEfeocwfkmx39Fl5RFMZPqCZUN1UWH82+H+9wQa7dn8aYjX/LNr4apStDIxVZWecKfQZ/MW+eM8pdtPnb4R0ujXHrv6rg7xGR5M1NowWJgNxeBqfmYFRk05+9gTwfNniTihpyF0wqHqBXI8S3i7wwVyxxt2jqUEfiGFgBM5wxbKoHA3XrUPRdY87gA1FrtBtx15RueP8EWhWaoIPWr4HffFeXmi5YGSxGZ5wBVAM7jDrA4XP7YUG0KFmJ9o1iuN/NL3j+qTCikARNCJmiS5eUHqdrxSh/3fwidO4vVygVdlFvq52Pi+zayotxFWElqZMSKrdXFikTeWz4Aef+DC6eMy7IRwIXMm5gQ4wagTJCabasxHfe4eHQ2yVPzAtIv1Sc6+yTpWIzEkJT2mqcV+x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(366004)(39860400002)(396003)(451199021)(5660300002)(8936002)(966005)(26005)(6512007)(6506007)(2906002)(83380400001)(2616005)(36756003)(186003)(66476007)(66556008)(76116006)(66946007)(66446008)(64756008)(6916009)(91956017)(122000001)(82960400001)(71200400001)(316002)(86362001)(38100700002)(38070700005)(478600001)(41300700001)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVMvSlBSZDlnMGJCekFlSFhOQ29xSUNoNFdqc2dTNVlCam11UERtVHEyL1lq?=
 =?utf-8?B?UlJUKzBPUGF4YkJvUHQ2bXg3RjhrL09TWi8rTFdPb1I0OENYRkhqVHFuTHpw?=
 =?utf-8?B?WGNvQzV3NW5KRUtvSmVtY1RmNU5MOElYVmpDTmlYTVVTUW5oazh5clNoaFhj?=
 =?utf-8?B?ckhWTUhkT04wT2NpSTlvUi91d3ZURU5oMzNPN1BzanZ6bGREWWxzT3NQSWpl?=
 =?utf-8?B?MG85QjFOQ3JZNG0yUGREQnNxQk9QL09CcnZPVjJtU2lHQ0gxWlp3aHVRVnM3?=
 =?utf-8?B?YkJYRmg2bEJxR0MrUTVoaHY5SWFzMGZ0YmtRczJvVEQ4UDRjRStyRW1MR1dk?=
 =?utf-8?B?MXg1M0l4Vm5OaGlTMzJLUUY1NndaaXIzOXVhLzdUNk1Pa2g2eTIybEROckZr?=
 =?utf-8?B?MUVpRzRTWUYySUY3Q1h3SWlLaWxTWDJObVhOWWNXbS9kNFFaSzhrR0lWejVD?=
 =?utf-8?B?UEt3RTJOd1Y5MkN5SnNneFhhSy83ZW1lKzN0R0lnaVBpVU9vL3BCREtQdmNT?=
 =?utf-8?B?ODNqSzgxOVpyWGxjUkNRU2ZnOEFBdWFVS2ZzSE5mcEY2UEJPd2RUb1Ywaldk?=
 =?utf-8?B?VWJpWGVKQ0k4dzl0TTE3TUsvWXFyMnBzV0hiL0NTT1lXemQvYVRNYnBBRDVP?=
 =?utf-8?B?SlZMbkpFQU1EYzVjM1J6TUZKS3Y1WjByQ1Z6eEhqRVdpcWw5SjlZVFVYVzlm?=
 =?utf-8?B?bkZDbHdhVWdkYTE3ZXNZaGpOLzlTMDBRcWhtTDJjZTNadTIrbUhpUGtyUFVx?=
 =?utf-8?B?ckZXNE0wZVBXa2tGdUY0SDA3QTdZeHp5RURlaWY1NGZZbjFYeWljb3ZZM3FG?=
 =?utf-8?B?SzF4RnlVdHFodUJQNVE4OCtSWmMvOVB6Q2g4TDZSTkorUEIrRWRIVjFSMzhD?=
 =?utf-8?B?bXI0RkxvWTVROG1Ba3lEMnRSRE41Uk40NjlhTVkvbm5YREZ2bWNtb2pCZE1U?=
 =?utf-8?B?UHkzRk5tSEpHUjAyVHJzMGlUVStFSUh1VU9qK0FjbWM3aGFyem95NE1kUUJR?=
 =?utf-8?B?UjVOS3llZ2Y1M3JZcjF4Nkl2MFJqU3lHOElRRFV5VXlhNjFsNlI3dHFIMi9F?=
 =?utf-8?B?ZnJMK0dWYXR3aG1ET3J4LzgzREgvdkhhdjc3SG5qTGU5ZG5ZL1hRU3RHeXNn?=
 =?utf-8?B?RlJycGNEUWdXc3ZCbXNhL0lHWXhpWEt2R2d4NnhBTGwxWlRycWVTcXM2RDhV?=
 =?utf-8?B?YnRSWG9aVTdMczBTOHpJS0RCQUorLzVIQitJamNOdUhmTzFscklPTjVuYmdR?=
 =?utf-8?B?bjdITjgxRmVTTFFXcURTa1VuUkVHY09vNis2TmFSR2ZXcUpXTHh3UEpINTZX?=
 =?utf-8?B?Y2puSVdaVGozOFRpZlJaQXFLRGZyWTc3bjJOdW1tTkdRRGk5MFlNUmFiYS9Y?=
 =?utf-8?B?WUcyaEdPWktTQTJ1bll6WWx2c1h5RFovYXhXL0l4V0tzcnFCYjU0dTk5VDFD?=
 =?utf-8?B?MmpadkFkZ29weE4zQW5CZENKOXlnYlFJZmlxYS92VDdGTlRURlBxcDVRSDlY?=
 =?utf-8?B?Y3Z0ZWgxMnVtY1d4L3RZbHA1b3hWRUxXN3M5M0t2S0hCUWtKWTdGYzZsTkFD?=
 =?utf-8?B?bDBRKzBiSGRUMStQYVVkczVoclFmUjZSOUxkeGxtSUZCNDFibmYvdFA1TS9C?=
 =?utf-8?B?UU5oKzRlc3BzVHRHNzB4aWhyTGY5dlJzSGM1dzZqRkJLUmdrZEowOUwxaFBx?=
 =?utf-8?B?UmREQ2tmM2R1dGNhMW14UkI3LzVyT3hzaEtNY3pXeDAwS1BxL0VzV2swNE5Z?=
 =?utf-8?B?WmRNSGlucnNuMmlJRW5xMEl6N1BuOVNqUnh4SVQ3MU8wZjhaVEhiNExmMFI4?=
 =?utf-8?B?SVV2cGxoT2tYaUxqVm5BWjhITVEwTnc5OWxyK2hwcnNIOGR0bHRNWGRzZGh1?=
 =?utf-8?B?Z3hJRG51ZVhQRHFoT2NsVEt6Wmk5Q2JDVjE4VmZTMnpGWjNCTU9HWWN4Zi9R?=
 =?utf-8?B?QVgyQldtWnpvTXhHdWVxUHNNZnJUM0Z4S0FrbWJaMlJyRWpubzRyaEIyRHc3?=
 =?utf-8?B?UUYxbGVGN0wyUi9MWittKzJmZVJHOGNBZjY4cXBwSTU1dEduWWlHUmVydEZR?=
 =?utf-8?B?M1NIUnhYMEdDSTBBL24zU2FYSGc2Qno2V25Ea1lDNGNUNlZrcXlXRDM4VVZo?=
 =?utf-8?B?OTMwaEsrV0NDcXZZVUY1UER2eDRlTGRSa0E1NXNCM3Jud25yc0FGZlN1ZUt6?=
 =?utf-8?Q?3+74H6e43/+490LsYYW9J7I=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DD34B85B34D46F4FAB622A30F9A82281@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eaba5a1-d736-4c5a-7c20-08db5c7a84f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2023 17:15:48.9351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dKABtf/3wiD6JxfdxbTwe55EBisDLtpa4Wbxyen+xLJNLbpG5ZY52QxjAhGNZHJNC4W+ULojhl+gbD7PXZUz2oLvpgybfLQ1V2tBLQxCq8gHr2Z9gr+jWfxllijDGC7E
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5032
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftest/gsc=3A_Ensure_GSC_Proxy_init_completes_before_se?=
 =?utf-8?q?lftests?=
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

VGhlIGVycm9yIGJlbG93IHNlZW1zIHVucmVsYXRlZCB0byB0aGUgY2hhbmdlIGluIHRoaXMgcGF0
Y2guIEluIGZhY3QgdGVzdCBiZWxvdyBmYWlscyBvbiBBUEwgd2hpY2ggd29udCBleGNlcnNpemUg
dGhlIHBhdGNoIGNvZGUgY2hhbmdlLg0KSG93ZXZlciwgZnJvbSBpbnRlcm5hbCB0ZXN0aW5nIHdl
IGRpZCBzZWUgY2FzZXMgd2hlcmUgQ0kncyBzZWxmdGVzdCB0aW1lb3V0IGlzIGxvd2VyIHRoYW4g
dGhlIEdTQyBQcm94eSByZXF1aXJlcyB0byBjb21wbGV0ZQ0KKGkuZS4gdGhlIHNlbGZ0ZXN0IHdv
dWxkIGJhaWwgd2l0aCB0aW1lb3V0IGJlY2F1c2UgaXQgd2FzIHdhaXRpbmcgZm9yIHRoZSBHU0Mg
cHJveHkgdG8gY29tcGxldGUgYnV0IHRoZSBjb21wbGV0aW9uIGNhbWUgaW4gYWZ0ZXIgdGhlIHRp
bWVvdXQpLg0KDQpTbyBtaWdodCBuZWVkIHRvIHJlLXJldiB0aGlzIGFueXdheSB3aXRoIGEgbG9u
Z2VyIHRpbWVvdXQuICh3aGljaCB0eXBpY2FsbHkgdGFrZXMgbG9uZ2VyIGZvciBmaXJzdCB0aW1l
IGJvb3QsIG5vdCBhdCBkcml2ZXItcmVsb2FkIG9yIHN1c3BlbmQtcmVzdW1lKQ0KDQouLi5hbGFu
DQoNCk9uIFNhdCwgMjAyMy0wNS0xMyBhdCAwNDo1NSArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0K
PiBQYXRjaCBEZXRhaWxzDQo+IFNlcmllczogZHJtL2k5MTUvc2VsZnRlc3QvZ3NjOiBFbnN1cmUg
R1NDIFByb3h5IGluaXQgY29tcGxldGVzIGJlZm9yZSBzZWxmdGVzdHMNCj4gVVJMOiAgICBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzExNzcxMy8NCj4gU3RhdGU6ICBm
YWlsdXJlDQo+IERldGFpbHM6ICAgICAgICBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMTc3MTN2MS9pbmRleC5odG1sDQo+IENJIEJ1ZyBMb2cgLSBj
aGFuZ2VzIGZyb20gQ0lfRFJNXzEzMTQzX2Z1bGwgLT4gUGF0Y2h3b3JrXzExNzcxM3YxX2Z1bGwN
Cj4gU3VtbWFyeQ0KPiANCj4gRkFJTFVSRQ0KPiANCj4gU2VyaW91cyB1bmtub3duIGNoYW5nZXMg
Y29taW5nIHdpdGggUGF0Y2h3b3JrXzExNzcxM3YxX2Z1bGwgYWJzb2x1dGVseSBuZWVkIHRvIGJl
DQo+IHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiANCj4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBj
aGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+IGludHJvZHVjZWQg
aW4gUGF0Y2h3b3JrXzExNzcxM3YxX2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0
byBhbGxvdyB0aGVtDQo+IHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2gg
d2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPiANCj4gUGFydGljaXBhdGluZyBo
b3N0cyAoNyAtPiA3KQ0KPiANCj4gTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzDQo+
IA0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IA0KPiBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFu
Z2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMTc3MTN2MV9m
dWxsOg0KPiANCj4gSUdUIGNoYW5nZXMNCj4gUG9zc2libGUgcmVncmVzc2lvbnMNCj4gDQo+ICAg
KiAgIGlndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZEBwaXBl
LWItcGxhbmVzOg0KPiAgICAgICogICBzaGFyZC1hcGw6IFBBU1M8aHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTMxNDMvc2hhcmQtYXBsNy9pZ3RAa21zX3Bs
YW5lQHBsYW5lLXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmRAcGlwZS1iLXBsYW5lcy5odG1s
PiAtPiBBQk9SVDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMTc3MTN2MS9zaGFyZC1hcGwyL2lndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0
b20tcmlnaHQtc3VzcGVuZEBwaXBlLWItcGxhbmVzLmh0bWw+DQo+IA0KYWxhbjpzbmlwDQo=
