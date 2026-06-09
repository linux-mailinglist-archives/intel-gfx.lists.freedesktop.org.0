Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id grKcHSUbKGoj+AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:54:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1BE660C12
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:54:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=gnzV8q4K;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5896F10E38F;
	Tue,  9 Jun 2026 13:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com
 [209.85.128.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCDA310E117
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2026 11:54:53 +0000 (UTC)
Received: by mail-yw1-f176.google.com with SMTP id
 00721157ae682-7e87602f26aso60354577b3.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jun 2026 04:54:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781006093; cv=none;
 d=google.com; s=arc-20240605;
 b=LT8Y0HGVUH32VZDyYqs9kK0e0zflOnpRUnRyejot6YxaNUk70STTL18D1/COFM2Psd
 Zid/Mfx0qK0oae/GV1pWXANIIFo80K42H9E8C6QWSxcvoVMuEYSGmrCLSZxTJKX5n8sd
 D3oUhy0ZYeRh18dSJM8CBvrRwix6K5EuxMh2wjOJZXVe546oJDyt8ugh+Mq9SVWQxl48
 YsBpiZqZqbnzalE+hAKLeJU/d1jRuMRjXk1IPGk9TFq47hyB8jVZLgInVGTJUSKvWxFl
 SKwLPRUaQPKFpKMvi2WLQUmVUk34Ja9iSK3tDGzMSlgd39hoWcTx5e2Gn2mmraf2ng/i
 H8Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=XeQ+p77/d+Z7ZWKhcUmSiOA/AtiBMuey+b5sMyZaY/Q=;
 fh=Dfk3nxlR/JVV0utBD9cEJ9zFv6vmiPkj+yb0/YsC6cQ=;
 b=SufZyJ26+9i8+yjacetNuaISQIh6oLz9oNrcdzJGSbZVhzBlPAn+xqFiT7K2PfOgDG
 tScn1/NC2Uw/oLspa0wQF1eieUT49YB/IAoW3tCm06oevu0Y1TRbEa5YvEM1s7mUJUCR
 oSIiWEgdP88o+lJ7a+GolIiTCwKvL+pzUOtET04Rknj0ORU4ZrFI/hm4nyR208jbij0V
 OfE2FMZnMiJNRm1EqjsHWx/dMoW/qM+QR/sfj88RnEQNOZXvWk/E51yPlKFSKIOBmUWI
 lJvugNoykJfDIEVJ7ofskU8X9N7qsdpLUyTP1AiLOvovDZJa1f9tCkp23wHKs9cL8bu2
 4MhQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781006093; x=1781610893; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=XeQ+p77/d+Z7ZWKhcUmSiOA/AtiBMuey+b5sMyZaY/Q=;
 b=gnzV8q4Kv/yorIEOBLr5FrYNYi3wEqtzEbgMlns08lZToN+FBIZ+Czv88Esb7AbcMe
 BBfc1xm+uda3w6wenSndWFeQU47adPbzDsYNW4Ckaw8cAVfYoh5mdwclVxEPfN8RLCtU
 iA5Y3APyL+oCcgYgWi05P9E7EHbjx0ftnVRNv+Q/3OcBxOF9O5vTsShrWEM5BaqY/of6
 nsu6YB46ImcB85+IICAyefMZy1PFmTszepVDyTgl9AubHCCJ3NWCdUSIxbF6BXlL3Xyg
 Kkt/e9mbk+ytaIwyFpVlNJo6SmMRFW8nC/fmsBkxr4jtKgbmK1r1x6VtX5Tb0/R8P1Tv
 9alQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781006093; x=1781610893;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XeQ+p77/d+Z7ZWKhcUmSiOA/AtiBMuey+b5sMyZaY/Q=;
 b=aT5XbqvbR4cwLoX3vCNeCzwSnIrdroIi0AvOVLjCZQPQrBwZJf+5YOgrtB4G9mvsW0
 v8lAGeI5mf1ie/N6GYUqiLybasFSqxNx+dFv83LB5QhcvaYUyQPJ2ytmf3QT89goQ7oq
 LbZwEB+u+v68xV34Swd6u8yG5QEI4h8A8Mc0lLcI5suB4eWyoBaSRC5D2OZANGt6OkS4
 8Ly82rpivAvMsP30YfvOzKeDfXTmmiiSw0xHv+hx+J1xfERIfmiaz4NBehmIVq9Jzc8i
 FQhHyxAZYJ1ij6OxhGD9Luf/CV8xRdqL96ZViyQlvnrJbpokmu1MJzb396Cme7+U9cSE
 aTCw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/4v4Hy1MCOtOlYA2zKAhKV1BVc9XTKbjp7fI7WKXRk4w8+1MMyuQDi86pnD/rHziYyfY3tsROYUm0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx+zcmrYmCNFJVdE/1FO1YI9uevejuI9nBboVvS/dbqD3IFlb0D
 Gth51b92IPvvnYg4i+X+QWEnhJyasCFRZKUyAgfwZa26nk3acVp3NKwqaFJOXRJb4xtbUd6MBI6
 WAJrIOU6jKEVK2wL5chIFGIVpjAvgGNc=
X-Gm-Gg: Acq92OFeXM4o+i2CRzHA0H1ib9NOARUG1RkjZzoPK2X9W02FMM7GlPHktgF5tufjNQm
 7dkphDJoXd5rhnG46ZzgYb894h5rnuJmoosEcFWD9XeDcY1USGc0rucW0tzXCaqIejHLftBRHuv
 gpijlKkIJBvLtYjT0TXUYauts+Vx68+9HFc0pjQyOhrmLrIOdrDSMp91nX7H0bf1ZJFwffF7xR/
 wRHmhwlFclRuT3AyvnD2TqX95X3JWszqql03W/L3GHr5+E86+xYWe7MxYzE6CnlYSo1ripOmDtd
 bZiLJy5KpjdWge/YeWTgaK79McAIaSF2wsuy87vBqGviN55IjdNeBkLQ/NDqaUTYbcZ9zKnEN4c
 XOE3i4NouBXrVW6OW6xghJjmPi2UaEJ0f8No=
X-Received: by 2002:a05:690c:c641:b0:7ef:9fd9:db07 with SMTP id
 00721157ae682-7ef9fd9ec08mr68513147b3.12.1781006092646; Tue, 09 Jun 2026
 04:54:52 -0700 (PDT)
MIME-Version: 1.0
References: <20260529100838.8896-1-hardikprakash.official@gmail.com>
 <20260529100838.8896-3-hardikprakash.official@gmail.com>
 <90656be5-eca0-4a09-9b19-0c6e85f1d455@intel.com>
In-Reply-To: <90656be5-eca0-4a09-9b19-0c6e85f1d455@intel.com>
From: Hardik Prakash <hardikprakash.official@gmail.com>
Date: Tue, 9 Jun 2026 17:24:40 +0530
X-Gm-Features: AVVi8CdfZUz24SRju8INwnmTSUkgRXl7HmToTY6fmuk1j_i-qHGGLW828h7ZG9M
Message-ID: <CANTFpSV7N=5U9yuXcU-D=PDpwj=kD__JU89UGL1HQOYiaL77qg@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] i2c: designware: defer probe if child GpioInt
 controllers are not bound
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org, wsa@kernel.org, 
 andriy.shevchenko@intel.com, mario.limonciello@amd.com, brgl@bgdev.pl, 
 basavaraj.natikar@amd.com, linusw@kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, 
 "Mario Limonciello (AMD)" <superm1@kernel.org>,
 kernel test robot <lkp@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 ravitejax.veesam@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 09 Jun 2026 13:54:41 +0000
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:chaitanya.kumar.borah@intel.com,m:linux-i2c@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:wsa@kernel.org,m:andriy.shevchenko@intel.com,m:mario.limonciello@amd.com,m:brgl@bgdev.pl,m:basavaraj.natikar@amd.com,m:linusw@kernel.org,m:bartosz.golaszewski@oss.qualcomm.com,m:superm1@kernel.org,m:lkp@intel.com,m:intel-xe@lists.freedesktop.org,m:ravitejax.veesam@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[hardikprakashofficial@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[hardikprakashofficial@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,amd.com:email,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,qualcomm.com:email,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD1BE660C12

On Mon, Jun 08, 2026 at 16:18, Borah, Chaitanya Kumar wrote:
> This patch seems to cause a regression in our CI. Few of the machines
> are unable to boot to ssh console and therefore hindering our test
> execution. Bisect points to this patch and reverting this patch seems
> to fix the issue.

Thank you for the report and the log. The putty log shows the kernel
panic: "Timeout: Not all CPUs entered broadcast exception handler"
after what appears to be a probe deferral loop causing CPU starvation.

Andy Shevchenko already identified code issues with this patch on June
3rd and requested Linus Walleij drop it from his tree. The patch has
not been fixed yet -- it needs a proper rewrite addressing NULL pointer
dereferences and error path issues before it is safe to apply.

Linus, could you please drop commit ef76a3a28c79 from your fixes tree?
The regression affects multiple machines including Intel CI and Nathan
Chancellor's test systems.

I will send a corrected version once the rewrite is complete.

Sorry for the disruption.

Thanks,
Hardik

On Tue, 9 Jun 2026 at 16:18, Borah, Chaitanya Kumar
<chaitanya.kumar.borah@intel.com> wrote:
>
> Hello Hardik,
>
> On 5/29/2026 3:38 PM, Hardik Prakash wrote:
> > I2C controllers may have child devices with GpioInt resources that
> > depend on GPIO controllers to be fully initialized. If the I2C
> > controller probes and enumerates children before the referenced GPIO
> > controller has completed probe, GPIO interrupts may not be properly
> > configured, leading to device failures.
> >
> > On Lenovo Yoga 7 14AGP11, the WACF2200 touchscreen (child of
> > AMDI0010:02) has a GpioInt resource pointing to GPIO 157 on the
> > pinctrl-amd controller (AMDI0030:00). When i2c-designware probes
> > AMDI0010:02 before pinctrl-amd finishes initializing, I2C transactions
> > occur before the GPIO IRQ quirk in amd_gpio_probe() has run, causing:
> >
> >    i2c_designware AMDI0010:02: i2c_dw_handle_tx_abort: lost arbitration
> >
> > Add a generic dependency check in i2c-designware that walks ACPI child
> > devices, identifies any GpioInt resources, resolves the referenced GPIO
> > controllers, and defers probe if those controllers are not yet bound.
> >
> > This ensures GPIO controllers complete initialization (including IRQ
> > setup and quirks) before I2C child enumeration begins, fixing the race
> > without device-specific quirks or DMI matching.
> >
> > The probe ordering race was confirmed via dynamic debug tracing:
> >
> >    0.285952  amd_gpio_probe: registering gpiochip  <- GPIO chip visible
> >    0.287121  amd_gpio_probe: requesting parent IRQ <- probe still running
> >    0.301454  AMDI0010:02 dw_i2c_plat_probe: start  <- races here
> >    2.348157  lost arbitration
> >
>
> This patch seems to cause a regression in our CI [1]. Few of the machine
> are unable to boot to ssh console and therefore hindering our test exection.
>
> The issue first appeared with next-20260601 [2].
>
> Bisect points to this patch and reverting this patch seems to fix the issue.
>
> Putty logs are attached.
>
> Could you please check why the patch causes this regression and provide
> a fix if necessary?
>
> ==
> Chaitanya
>
> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> [2]
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260601
>
> > Suggested-by: Mario Limonciello <mario.limonciello@amd.com>
> > Signed-off-by: Hardik Prakash <hardikprakash.official@gmail.com>
> > Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> > Reviewed-by: Mario Limonciello (AMD) <superm1@kernel.org>
> > Assisted-by: Claude:claude-sonnet-4-6
> > Assisted-by: GPT-Codex:gpt-5.2-codex
> > Reported-by: kernel test robot <lkp@intel.com>
> > Closes: https://lore.kernel.org/oe-kbuild-all/202605240959.Kcf1lIg4-lkp@intel.com/
> > Link: https://bugzilla.kernel.org/show_bug.cgi?id=221494
> > ---
> >   drivers/i2c/busses/i2c-designware-platdrv.c | 156 ++++++++++++++++++++
> >   1 file changed, 156 insertions(+)
> >
> > diff --git a/drivers/i2c/busses/i2c-designware-platdrv.c b/drivers/i2c/busses/i2c-designware-platdrv.c
> > index 3351c4a9ef11..1c01b0460385 100644
> > --- a/drivers/i2c/busses/i2c-designware-platdrv.c
> > +++ b/drivers/i2c/busses/i2c-designware-platdrv.c
> > @@ -8,6 +8,8 @@
> >    * Copyright (C) 2007 MontaVista Software Inc.
> >    * Copyright (C) 2009 Provigent Ltd.
> >    */
> > +
> > +#include <linux/acpi.h>
> >   #include <linux/clk-provider.h>
> >   #include <linux/clk.h>
> >   #include <linux/delay.h>
> > @@ -130,6 +132,152 @@ static int i2c_dw_probe_lock_support(struct dw_i2c_dev *dev)
> >       return 0;
> >   }
> >
> > +#ifdef CONFIG_ACPI
> > +struct gpio_dep_ctx {
> > +     struct list_head gpio_controllers;
> > +     int ret;
> > +};
> > +
> > +struct gpio_controller_ref {
> > +     struct list_head node;
> > +     char *path;
> > +};
> > +
> > +static int check_gpioint_resource(struct acpi_resource *ares, void *data)
> > +{
> > +     struct gpio_dep_ctx *ctx = data;
> > +     struct acpi_resource_gpio *agpio;
> > +     struct gpio_controller_ref *ref, *tmp;
> > +     bool found = false;
> > +
> > +     if (ares->type != ACPI_RESOURCE_TYPE_GPIO)
> > +             return 1;
> > +
> > +     agpio = &ares->data.gpio;
> > +     if (agpio->connection_type != ACPI_RESOURCE_GPIO_TYPE_INT)
> > +             return 1;
> > +
> > +     /* Check if we've already tracked this GPIO controller */
> > +     list_for_each_entry(tmp, &ctx->gpio_controllers, node) {
> > +             if (!strcmp(tmp->path, agpio->resource_source.string_ptr)) {
> > +                     found = true;
> > +                     break;
> > +             }
> > +     }
> > +
> > +     if (!found) {
> > +             ref = kzalloc(sizeof(*ref), GFP_KERNEL);
> > +             if (!ref) {
> > +                     ctx->ret = -ENOMEM;
> > +                     return 0;
> > +             }
> > +
> > +             ref->path = kstrdup(agpio->resource_source.string_ptr, GFP_KERNEL);
> > +             if (!ref->path) {
> > +                     kfree(ref);
> > +                     ctx->ret = -ENOMEM;
> > +                     return 0;
> > +             }
> > +
> > +             list_add_tail(&ref->node, &ctx->gpio_controllers);
> > +     }
> > +
> > +     return 1;
> > +}
> > +
> > +static int check_child_gpioint(struct acpi_device *adev, void *data)
> > +{
> > +     struct gpio_dep_ctx *ctx = data;
> > +     struct list_head res_list;
> > +
> > +     INIT_LIST_HEAD(&res_list);
> > +
> > +     acpi_dev_get_resources(adev, &res_list, check_gpioint_resource, ctx);
> > +     acpi_dev_free_resource_list(&res_list);
> > +
> > +     if (ctx->ret < 0)
> > +             return ctx->ret;
> > +
> > +     return 0;
> > +}
> > +
> > +static int i2c_dw_check_gpio_dependencies(struct device *dev)
> > +{
> > +     struct acpi_device *adev = ACPI_COMPANION(dev);
> > +     struct gpio_dep_ctx ctx = { .ret = 0 };
> > +     struct gpio_controller_ref *ref, *tmp;
> > +     int ret = 0;
> > +
> > +     if (!adev)
> > +             return 0;
> > +
> > +     INIT_LIST_HEAD(&ctx.gpio_controllers);
> > +
> > +     /* Walk all child devices and collect GpioInt controller references */
> > +     ret = acpi_dev_for_each_child(adev, check_child_gpioint, &ctx);
> > +     if (ret < 0 || ctx.ret < 0) {
> > +             ret = ctx.ret ?: ret;
> > +             goto cleanup;
> > +     }
> > +
> > +     /* For each GPIO controller, check if its parent device is bound */
> > +     list_for_each_entry(ref, &ctx.gpio_controllers, node) {
> > +             acpi_handle handle;
> > +             acpi_status status;
> > +             struct acpi_device *gpio_adev;
> > +             struct device *gpio_dev;
> > +             bool bound;
> > +
> > +             status = acpi_get_handle(NULL, ref->path, &handle);
> > +             if (ACPI_FAILURE(status))
> > +                     continue;
> > +
> > +             gpio_adev = acpi_fetch_acpi_dev(handle);
> > +             if (!gpio_adev)
> > +                     continue;
> > +
> > +             gpio_dev = acpi_get_first_physical_node(gpio_adev);
> > +             acpi_dev_put(gpio_adev);
> > +
> > +             if (!gpio_dev) {
> > +                     ret = -EPROBE_DEFER;
> > +                     goto cleanup;
> > +             }
> > +
> > +             /*
> > +              * Check if the GPIO controller's device is bound. If not,
> > +              * defer probe to ensure GPIO initialization (including IRQ
> > +              * setup and quirks) is complete before we enumerate I2C
> > +              * child devices.
> > +              */
> > +             scoped_guard(device, gpio_dev) {
> > +                     bound = device_is_bound(gpio_dev);
> > +             }
> > +             if (!bound) {
> > +                     put_device(gpio_dev);
> > +                     ret = -EPROBE_DEFER;
> > +                     goto cleanup;
> > +             }
> > +
> > +             put_device(gpio_dev);
> > +     }
> > +
> > +cleanup:
> > +     list_for_each_entry_safe(ref, tmp, &ctx.gpio_controllers, node) {
> > +             list_del(&ref->node);
> > +             kfree(ref->path);
> > +             kfree(ref);
> > +     }
> > +
> > +     return ret;
> > +}
> > +#else
> > +static int i2c_dw_check_gpio_dependencies(struct device *dev)
> > +{
> > +     return 0;
> > +}
> > +#endif /* CONFIG_ACPI */
> > +
> >   static int dw_i2c_plat_probe(struct platform_device *pdev)
> >   {
> >       u32 flags = (uintptr_t)device_get_match_data(&pdev->dev);
> > @@ -138,6 +286,14 @@ static int dw_i2c_plat_probe(struct platform_device *pdev)
> >       struct dw_i2c_dev *dev;
> >       int irq, ret;
> >
> > +     /*
> > +      * Check if any child devices have GpioInt resources, and if so,
> > +      * defer probe until those GPIO controllers are fully bound.
> > +      */
> > +     ret = i2c_dw_check_gpio_dependencies(device);
> > +     if (ret)
> > +             return ret;
> > +
> >       irq = platform_get_irq_optional(pdev, 0);
> >       if (irq == -ENXIO)
> >               flags |= ACCESS_POLLING;
