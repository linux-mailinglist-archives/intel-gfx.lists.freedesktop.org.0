Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD0E1B8425
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 09:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA4B86E14D;
	Sat, 25 Apr 2020 07:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14B8D6E14D
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2020 07:16:06 +0000 (UTC)
IronPort-SDR: /8e/NtMuBBFwkjRwtDmhOkEplgvKbUTgUi2GXViwc3hgD6IgX7HR5YZrL0iBlFR6OiIKWsabob
 0OH2twEq+PnA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2020 00:16:05 -0700
IronPort-SDR: 4dH8Q6NpV3s65gH3Z74jn89lUMpRFfuPjVHrNlajnw3l9j5uJGwy4GJaK5+xMyVAfD6FeB+Wtr
 uCBq0lhQAMAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,315,1583222400"; d="scan'208";a="335676652"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga001.jf.intel.com with ESMTP; 25 Apr 2020 00:16:05 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 25 Apr 2020 00:16:05 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.55) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Sat, 25 Apr 2020 00:16:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCN0D/DEi4nu0uT6VJ8gKNbWQDDpGklJx8PctCLZRTv9ABxZ6rHeFycHAsfwPrU20PIV7m/L+714uWxiSaawBMDBeTINtMxiOdlW6qwIcG79LjubrbzUZ71bBmcSJotxDinB3puJ6kx9m3w8aKfxA/Phii3RbiDFxap1pVlx5co9B+CgAzTYDCr0d+zIx5CXhb6kppbK/KLoWDp6wVxUqUdh100bsqGGM1UVWP52at+sIb0EgclogTqCJTqESs/eWn2bTSHg47HKGcAVZi8TVDVtUfVyAxEwwYl3+Yguq5VSgzbYFFAW7uh8dMlnbyNl6FmYaIwOjoMcYI/cvgYgCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cri4m8BZc4DTFJ254RHn3qOah1JeNnK7VCDUsc7VbD4=;
 b=E/Pq6Zurj9W3IfUXVZyalR5GBjwueK2zlajgi6nuKolnl6akSkX0TIKKmx2oXPfvUo57ktgfNSbefx7/Ee1FT4njpHf2NfDG4EIeC02hDks9RO76oMqBbfXfjpAtkyGo5y5u3l+ob8+dTqkmemePTdQdAHW8T8sHlaevCelv/LrnKoKJ1E57vXTzHJt/0WGOw2qUBFyYO0JMS/Vmjj9aiEFg5mZIrosyBWGMvziiYU6vyXvUW4koeoaaoqCnS8fqQ7FUbgenwX0xNZyGZBgBbjKQ/3LqyIuvzJCIbiD2f2lUNuHOTxNqoaV9QHP1lDiD+1RtZ9tHwG9yr833b7E5IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cri4m8BZc4DTFJ254RHn3qOah1JeNnK7VCDUsc7VbD4=;
 b=M4SUNilcKgsuZXPwlTDUZM6oYo74IB+wSC6uaa8CoOadivR4hl4Bb/7j2M78naH2ZlyYPc1Fl43v0eK7CBvH99jRVK3CHscW70R+LGHehyYXUds8cij2xDuX1d8HKVUTB9BCRMJ2pPrEEtxWb0WYgeo9S90VHuebtai7xxGLh14=
Received: from BYAPR11MB3799.namprd11.prod.outlook.com (2603:10b6:a03:fb::19)
 by BYAPR11MB3157.namprd11.prod.outlook.com (2603:10b6:a03:75::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Sat, 25 Apr
 2020 07:16:04 +0000
Received: from BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::c1fa:ce38:c280:58f6]) by BYAPR11MB3799.namprd11.prod.outlook.com
 ([fe80::c1fa:ce38:c280:58f6%3]) with mapi id 15.20.2921.032; Sat, 25 Apr 2020
 07:16:03 +0000
From: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [CI 1/2] drm/i915/selftests: Verify context isolation
Thread-Index: AQHWGhMpjxmWS9cBuE2sKF2CHaJ4E6iJbAug
Date: Sat, 25 Apr 2020 07:16:03 +0000
Message-ID: <BYAPR11MB3799DBD75504EAEB8C1D1C32A9D10@BYAPR11MB3799.namprd11.prod.outlook.com>
References: <20200424083303.19226-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200424083303.19226-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=akeem.g.abodunrin@intel.com; 
x-originating-ip: [134.134.136.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b76e88f-a3e3-4286-cc3b-08d7e8e883d8
x-ms-traffictypediagnostic: BYAPR11MB3157:
x-microsoft-antispam-prvs: <BYAPR11MB31579AC0BA873FA0BF37C194A9D10@BYAPR11MB3157.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0384275935
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3799.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(136003)(346002)(366004)(39860400002)(396003)(376002)(26005)(110136005)(9686003)(55016002)(5660300002)(316002)(186003)(52536014)(8676002)(966005)(15650500001)(33656002)(478600001)(66946007)(30864003)(71200400001)(7696005)(6506007)(8936002)(2906002)(66476007)(86362001)(81156014)(66556008)(76116006)(53546011)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IBZajMvdi5J1XlqvvdMp0mnHvr2g9of1/ZFxkxQSPKL+KIWuoRLtMAI1M4HlYdm0n5Kqd7wTpgwtIxZoqMrLqiiBcST7ezeQQTThKJcFJSas+lKH0LbOlfsV111m5LpbYen9vgOLlR9BSXpJSiE2yBiwYqr49FiEN4DrkHDw2FQEYerA7X8ezqKolGPhsBtSm9OqOKgdYIvpQAKcS9m86wQOKbw048GW2JNOs8fLYlPfEWt3fs6nsNLi7Oj8At3qb5YXRZfU+Kw+aFmjQbqIRTpP6T774wta+gr82FxJaOiChOI0LMv/IXjQZlBTBVZaJGlHuxFlShmx6LiXTgrAlZqH7ZIiU7Ev8GSD2pu7YCs25YTwQ3lnQwBdWgaVnkAPtFC5AaDU6yaCKWWhTla2c0NRUP0YdNlVL2L6SY3ot5ONa9GKn2E7Q1pjuqYB9I9EpqyTrwqDEyl49RIChkXbQBA41b/54C2p1B11xzCct/8=
x-ms-exchange-antispam-messagedata: 2xHsr0ALWN/FTR7j5NOZVlCI4e/vBdep52fFakdLm65tCQO9wkOxU8ej+VKa1SFwoCB7kAx3+MsF8uCoISfOmCD/9nvktfVSKgk/5XWhkgWyQbxKese2OKO0de6SlU6rU4czt290ZuPOCWCwLTFRyvrJDfqUNyPg0TEbXv64qEYQIPwZzalJ4fwEZr6//9/bKPhZ+ostb9kfS/mzBmYS0/Tyd5lBKuMelnKAqHLq7qImfcBqDTL1N9b40RNWcRtvt7Pkdmyvr38uSVbTQe1c9HxGjfoCDhUtcEOIy2njX/w3Yh29M6SPrLR1lKkNIfv/int3B1VrOHK/PiNT97szx/hYdBiClh2oeMt9A+/6xBkGtVwdBVvozBttiz63wzBrXf5Qiu6hECB3aNIBDi5mEx2WiTLAaoWsjQBJvkmKN1jmgpnaftMsxb98beaqHy2kdEf78z/jlKYPcBz/xezoYxdgnQG0YeaKaAh8BPGA5gN+JShqinWdoHs9uXewchbFXoDbJ9m50Fc5H8oy5df4AetaMAvLdkb4gOehIn8GdUXXHa+jpGSBoKklll1mJgOYkAJBzxAMphCrPZUMtl16t6IuS9/Aqn6JzZU4qtx7Ot/WXx42XgqasKbMbQP62fMulqfRmpQ3blEXrLm2aptW8XQHsYo4j0HsQVUBwGoQiv282qA87cnvHglZbCQ9FDiEzjUZydR//UZlnH9eyOChRBKfKDeNSt3pgP1fRcpdGpwxk1brz542l1gBHB5fcqbZlNPJjvUMCsE1DuBp03gvOqQ8w+YInhZYIvkX/T8yyZMlSrAe2XHW9vOKrlXSMAZf
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b76e88f-a3e3-4286-cc3b-08d7e8e883d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2020 07:16:03.7175 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kVTO6NWcd93ztG5mlpLrklQYJB8NCKq97liTkSlzv5W3QonH+wnne6tGR488gnw0JRTNmhJo8WdEl8PWe1YEGrwlNcCmTSJNVJyi74hRwi0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3157
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/selftests: Verify context
 isolation
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
> Wilson
> Sent: Friday, April 24, 2020 1:33 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [CI 1/2] drm/i915/selftests: Verify context isolation
> 
> No unprivileged context should ever be allowed to modify logical state that is
> visible to another; there should be no backchannels available or control
> leakage for malicious actors.
> 
> This test tries to write to a set of random registers using non-privileged
> instructions (ala userspace). It should only be allowed to write into its
> context state, and all writes should not be visible to a second context. To
> verify this, we store the value of the register before writing to it in context A
> (as this should be the default value inherited from the golden context state)
> and do a read back from context B of the same register. The reads from both
> contexts should be identical, the default value, except for a few free running
> counters (either global or local).
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  .../drm/i915/gem/selftests/i915_gem_context.c | 441 ++++++++++++++++++
>  1 file changed, 441 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index f4f933240b39..c5c3433174dc 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -1865,6 +1865,446 @@ static int igt_vm_isolation(void *arg)
>  	return err;
>  }
> 
> +static struct i915_vma *create_vma(struct i915_address_space *vm,
> +size_t sz) {
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +
> +	obj = i915_gem_object_create_internal(vm->i915, sz);
> +	if (IS_ERR(obj))
> +		return ERR_CAST(obj);
> +
> +	vma = i915_vma_instance(obj, vm, NULL);
> +	if (IS_ERR(vma))
> +		i915_gem_object_put(obj);
> +
> +	return vma;
> +}
> +
> +struct iso_details {
> +	unsigned long count;
> +};
> +
> +enum {
> +	ISO_REG = 0,
> +	ISO_POISON,
> +	ISO_BEFORE,
> +	ISO_AFTER,
> +	__ISO__
> +};
> +
> +static int iso_write(struct i915_gem_context *ctx,
> +		     struct intel_engine_cs *engine,
> +		     struct drm_i915_gem_object *obj,
> +		     const struct iso_details *iso,
> +		     u32 *ctl)
> +{
> +	struct i915_vma *batch, *vma;
> +	struct intel_context *ce;
> +	struct i915_request *rq;
> +	u32 *cs;
> +	int err;
> +	int i;
> +
> +	ce = i915_gem_context_get_engine(ctx, engine->legacy_idx);
> +	if (IS_ERR(ce))
> +		return PTR_ERR(ce);
> +
> +	batch = create_vma(ce->vm, PAGE_ALIGN(16 * iso->count + 4));
> +	if (IS_ERR(batch)) {
> +		err = PTR_ERR(batch);
> +		goto err_ce;
> +	}
> +
> +	vma = i915_vma_instance(obj, ce->vm, NULL);
> +	if (IS_ERR(vma)) {
> +		err = PTR_ERR(vma);
> +		goto err_batch;
> +	}
> +
> +	err = i915_vma_pin(batch, 0, 0, PIN_USER);
> +	if (err)
> +		goto err_batch;
> +
> +	err = i915_vma_pin(vma, 0, 0, PIN_USER);
> +	if (err)
> +		goto err_unpin_batch;
> +
> +	cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
> +	if (IS_ERR(cs)) {
> +		err = PTR_ERR(cs);
> +		goto err_vma;
> +	}
> +
> +	for (i = 0; i < iso->count; i++) {
> +		*cs++ = MI_LOAD_REGISTER_IMM(1);
> +		*cs++ = ctl[i * __ISO__ + ISO_REG];
> +		*cs++ = ctl[i * __ISO__ + ISO_POISON];
> +	}
> +	*cs++ = MI_BATCH_BUFFER_END;
> +
> +	i915_gem_object_flush_map(batch->obj);
> +	i915_gem_object_unpin_map(batch->obj);
> +
> +	rq = intel_context_create_request(ce);
> +	if (IS_ERR(rq)) {
> +		err = PTR_ERR(rq);
> +		goto err_vma;
> +	}
> +
> +	i915_vma_lock(vma);
> +	err = i915_request_await_object(rq, vma->obj, true);
> +	if (err == 0)
> +		err = i915_vma_move_to_active(vma, rq,
> EXEC_OBJECT_WRITE);
> +	i915_vma_unlock(vma);
> +	if (err)
> +		goto err_rq;
> +
> +	i915_vma_lock(batch);
> +	err = i915_request_await_object(rq, batch->obj, false);
> +	if (err == 0)
> +		err = i915_vma_move_to_active(batch, rq, 0);
> +	i915_vma_unlock(batch);
> +	if (err)
> +		goto err_rq;
> +
> +	err = engine->emit_bb_start(rq, batch->node.start, batch->node.size,
> +0);
> +
> +err_rq:
> +	i915_request_add(rq);
> +err_vma:
> +	i915_vma_unpin(vma);
> +err_unpin_batch:
> +	i915_vma_unpin(batch);
> +err_batch:
> +	i915_vma_put(batch);
> +err_ce:
> +	intel_context_put(ce);
> +	return err;
> +}
> +
> +static int iso_read(struct i915_gem_context *ctx,
> +		    struct intel_engine_cs *engine,
> +		    struct drm_i915_gem_object *obj,
> +		    const struct iso_details *iso,
> +		    u32 *ctl,
> +		    int idx)
> +{
> +	struct i915_vma *batch, *vma;
> +	struct intel_context *ce;
> +	struct i915_request *rq;
> +	u32 *cs;
> +	int err;
> +	int i;
> +
> +	ce = i915_gem_context_get_engine(ctx, engine->legacy_idx);
> +	if (IS_ERR(ce))
> +		return PTR_ERR(ce);
> +
> +	batch = create_vma(ce->vm, PAGE_ALIGN(16 * iso->count + 4));
> +	if (IS_ERR(batch)) {
> +		err = PTR_ERR(batch);
> +		goto err_ce;
> +	}
> +
> +	vma = i915_vma_instance(obj, ce->vm, NULL);
> +	if (IS_ERR(vma)) {
> +		err = PTR_ERR(vma);
> +		goto err_batch;
> +	}
> +
> +	err = i915_vma_pin(batch, 0, 0, PIN_USER);
> +	if (err)
> +		goto err_batch;
> +
> +	err = i915_vma_pin(vma, 0, 0, PIN_USER);
> +	if (err)
> +		goto err_unpin_batch;
> +
> +	cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
> +	if (IS_ERR(cs)) {
> +		err = PTR_ERR(cs);
> +		goto err_vma;
> +	}
> +
> +	for (i = 0; i < iso->count; i++) {
> +		u64 addr = vma->node.start + (i * __ISO__ + idx) *
> sizeof(u32);
> +
> +		*cs++ = MI_STORE_REGISTER_MEM_GEN8;
> +		*cs++ = ctl[i * __ISO__ + ISO_REG];
> +		*cs++ = lower_32_bits(addr);
> +		*cs++ = upper_32_bits(addr);
> +	}
> +	*cs++ = MI_BATCH_BUFFER_END;
> +
> +	i915_gem_object_flush_map(batch->obj);
> +	i915_gem_object_unpin_map(batch->obj);
> +
> +	rq = intel_context_create_request(ce);
> +	if (IS_ERR(rq)) {
> +		err = PTR_ERR(rq);
> +		goto err_vma;
> +	}
> +
> +	i915_vma_lock(vma);
> +	err = i915_request_await_object(rq, vma->obj, true);
> +	if (err == 0)
> +		err = i915_vma_move_to_active(vma, rq,
> EXEC_OBJECT_WRITE);
> +	i915_vma_unlock(vma);
> +	if (err)
> +		goto err_rq;
> +
> +	i915_vma_lock(batch);
> +	err = i915_request_await_object(rq, batch->obj, false);
> +	if (err == 0)
> +		err = i915_vma_move_to_active(batch, rq, 0);
> +	i915_vma_unlock(batch);
> +	if (err)
> +		goto err_rq;
> +
> +	err = engine->emit_bb_start(rq, batch->node.start, batch->node.size,
> +0);
> +
> +err_rq:
> +	i915_request_add(rq);
> +err_vma:
> +	i915_vma_unpin(vma);
> +err_unpin_batch:
> +	i915_vma_unpin(batch);
> +err_batch:
> +	i915_vma_put(batch);
> +err_ce:
> +	intel_context_put(ce);
> +	return err;
> +}
> +
> +static bool is_timestamp(struct drm_i915_private *i915, u32 x) {
> +	struct intel_engine_cs *engine;
> +
> +	for_each_uabi_engine(engine, i915) {
> +		if (x == engine->mmio_base + 0x358)

What is the register offset 0x38, and below offsets (35c and 3a8) represent? I know that you know, but for many people on the same journey with you,  please define macro for things like these...
> +			return true;
> +
> +		if (x == engine->mmio_base + 0x35c)
> +			return true;
> +
> +		if (x == engine->mmio_base + 0x3a8)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +static bool is_whitelist(struct drm_i915_private *i915, u32 x) {
> +	struct intel_engine_cs *engine;
> +
> +	for_each_uabi_engine(engine, i915) {
> +		const struct i915_wa_list *w = &engine->whitelist;
> +		int i;
> +
> +		for (i = 0; i < w->count; i++) {
> +			if (x == i915_mmio_reg_offset(w->list[i].reg))
> +				return true;
> +		}
> +	}
> +
> +	return false;
> +}
> +
> +static u32 random_reg(struct drm_i915_private *i915,
> +		      struct rnd_state *prng)
> +{
> +	u32 x;
> +
> +	/*
> +	 * Pick any u32 aligned value that is not known to a free running
> +	 * counter (e.g. a timestamp).
> +	 */
> +	do {
> +		x = prandom_u32_state(prng) % 10000 * sizeof(u32);
> +		if (!is_timestamp(i915, x) && !is_whitelist(i915, x))
> +			return x;
> +	} while (1);
> +}
> +
> +static void hexdump(const void *buf, size_t len) {
> +	const size_t rowsize = 8 * sizeof(u32);
> +	const void *prev = NULL;
> +	bool skip = false;
> +	size_t pos;
> +
> +	for (pos = 0; pos < len; pos += rowsize) {
> +		char line[128];
> +
> +		if (prev && !memcmp(prev, buf + pos, rowsize)) {
> +			if (!skip) {
> +				pr_info("*\n");
> +				skip = true;
> +			}
> +			continue;
> +		}
> +
> +		WARN_ON_ONCE(hex_dump_to_buffer(buf + pos, len - pos,
> +						rowsize, sizeof(u32),
> +						line, sizeof(line),
> +						false) >= sizeof(line));
> +		pr_info("[%04zx] %s\n", pos, line);
> +
> +		prev = buf + pos;
> +		skip = false;
> +	}
> +}
> +
> +static bool skip_isolation(const struct intel_engine_cs *engine) {
> +	if (engine->class == COPY_ENGINE_CLASS && INTEL_GEN(engine-
> >i915) == 9)
> +		return true;
> +
> +	if (engine->class == RENDER_CLASS && INTEL_GEN(engine->i915) <
> 12)
> +		return true;
> +
> +	if (IS_BROADWELL(engine->i915))
> +		return true;
> +
Any reason for skipping context isolation check for those engines and device? Little comment will make code understandable.
> +	return false;
> +}
> +
> +static int igt_reg_isolation(void *arg) {
> +	const struct iso_details iso = { .count = 1024 };
> +	struct drm_i915_private *i915 = arg;
> +	struct i915_gem_context *ctx_a, *ctx_b;
> +	struct drm_i915_gem_object *obj;
> +	struct intel_engine_cs *engine;
> +	struct igt_live_test t;
> +	I915_RND_STATE(prng);
> +	struct file *file;
> +	unsigned long sz;
> +	u32 *ctl;
> +	int err;
> +	int i;
> +
> +	if (INTEL_GEN(i915) < 8) /* for LRM/SRM */
> +		return 0;
> +
> +	/*
> +	 * No state that we can write to from our context should be
> +	 * observable by another.
> +	 */
> +
> +	file = mock_file(i915);
> +	if (IS_ERR(file))
> +		return PTR_ERR(file);
> +
> +	err = igt_live_test_begin(&t, i915, __func__, "");
> +	if (err)
> +		goto out_file;
> +
> +	ctx_a = live_context(i915, file);
> +	if (IS_ERR(ctx_a)) {
> +		err = PTR_ERR(ctx_a);
> +		goto out_file;
> +	}
> +
> +	ctx_b = live_context(i915, file);
> +	if (IS_ERR(ctx_b)) {
> +		err = PTR_ERR(ctx_b);
> +		goto out_file;
> +	}
> +
> +	sz = PAGE_ALIGN(__ISO__ * iso.count * sizeof(u32));
> +	obj = i915_gem_object_create_internal(i915, sz);
> +	if (IS_ERR(obj)) {
> +		err = PTR_ERR(obj);
> +		goto out_file;
> +	}
> +
> +	ctl = i915_gem_object_pin_map(obj, I915_MAP_WC);
> +	if (IS_ERR(ctl))  {
> +		err = PTR_ERR(ctl);
> +		goto out_obj;
> +	}
> +
> +	for (i = 0; i < iso.count; i++) {
> +		ctl[i * __ISO__ + ISO_REG] = random_reg(i915, &prng);
> +		ctl[i * __ISO__ + ISO_POISON] = prandom_u32_state(&prng);
> +	}
> +
> +	for_each_uabi_engine(engine, i915) {
> +		if (!IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN) &&
> +		    skip_isolation(engine))
> +			continue; /* Just don't even ask */
> +
> +		for (i = 0; i < iso.count; i++) {
> +			ctl[i * __ISO__ + ISO_BEFORE] = 0xdeadbeef;
> +			ctl[i * __ISO__ + ISO_AFTER] = 0x00c0ffee;
> +		}
> +		i915_gem_object_flush_map(obj);
> +
> +		err = iso_read(ctx_b, engine, obj, &iso, ctl, ISO_BEFORE);
> +		if (err)
> +			break;
> +
> +		err = iso_read(ctx_a, engine, obj, &iso, ctl, ISO_BEFORE);
> +		if (err)
> +			break;
> +
> +		/* Twice to record after the first pristine context save */
> +		err = iso_read(ctx_b, engine, obj, &iso, ctl, ISO_BEFORE);
> +		if (err)
> +			break;
> +
> +		err = iso_write(ctx_a, engine, obj, &iso, ctl);
> +		if (err)
> +			break;
> +
> +		err = iso_read(ctx_b, engine, obj, &iso, ctl, ISO_AFTER);
> +		if (err)
> +			break;
> +
> +		err = i915_gem_object_wait(obj,
> +					   I915_WAIT_ALL |
> +					   I915_WAIT_INTERRUPTIBLE,
> +					   HZ / 2);
> +		if (err)
> +			break;
> +
> +		for (i = 0; i < iso.count; i++) {
> +			const u32 *result = &ctl[__ISO__ * i];
> +
> +			if (result[ISO_BEFORE] == result[ISO_AFTER])
> +				continue;
> +
> +			pr_err("%s: poison 0x%x with %08x, in:%08x,
> out:%08x\n",
> +			       engine->name,
> +			       result[ISO_REG],
> +			       result[ISO_POISON],
> +			       result[ISO_BEFORE],
> +			       result[ISO_AFTER]);
> +
> +			/* If we read back the poison in its entirety, whoops
> */
> +			if (result[ISO_AFTER] == result[ISO_POISON])
> +				err = -EINVAL;
> +		}
> +		if (err) {
> +			hexdump(ctl, __ISO__ * iso.count * sizeof(u32));
> +			break;
> +		}
> +	}
> +
> +	i915_gem_object_unpin_map(obj);
> +	if (igt_live_test_end(&t))
> +		err = -EIO;
> +
> +out_obj:
> +	i915_gem_object_put(obj);
> +out_file:
> +	fput(file);
> +	return err;
> +}
> +
>  static bool skip_unused_engines(struct intel_context *ce, void *data)  {
>  	return !ce->state;
> @@ -2000,6 +2440,7 @@ int i915_gem_context_live_selftests(struct
> drm_i915_private *i915)
>  		SUBTEST(igt_ctx_sseu),
>  		SUBTEST(igt_shared_ctx_exec),
>  		SUBTEST(igt_vm_isolation),
> +		SUBTEST(igt_reg_isolation),
Is this reg isolation or context isolation?

Thank you,
~Akeem
>  	};
> 
>  	if (intel_gt_is_wedged(&i915->gt))
> --
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
