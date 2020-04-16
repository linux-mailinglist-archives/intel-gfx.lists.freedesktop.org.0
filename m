Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA211AB965
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 09:09:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E2E66EB19;
	Thu, 16 Apr 2020 07:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97E136EB19;
 Thu, 16 Apr 2020 07:09:48 +0000 (UTC)
IronPort-SDR: O68ssVoe/MXnOObXPQB1ADHHXeFkJIpBokzEBO1X15T8LQ0TJleo32n6goQx7BQp3dteetCh79
 +qOmRPqKPPlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 00:09:47 -0700
IronPort-SDR: MEX9GUuN58Z8y9bgtGifG+uMQ1zy505QWccnMJ8I9FrEeebOwxAk8ka3AU7pZi8XaTfpkh2NIg
 r8HD/O0TvUOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,390,1580803200"; d="scan'208";a="455169283"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga006.fm.intel.com with ESMTP; 16 Apr 2020 00:09:45 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1jOyee-00011B-7M; Thu, 16 Apr 2020 10:09:44 +0300
Date: Thu, 16 Apr 2020 10:09:44 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20200416070944.GT9497@platvala-desk.ger.corp.intel.com>
References: <20200415131515.7507-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415131515.7507-1-janusz.krzysztofik@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t v15] tests: Add a test for device hot
 unplug
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
Cc: Janusz Krzysztofik <janusz.krzysztofik@intel.com>,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 15, 2020 at 03:15:15PM +0200, Janusz Krzysztofik wrote:
> From: Janusz Krzysztofik <janusz.krzysztofik@intel.com>
> =

> There is a test which verifies unloading of i915 driver module but no
> test exists that checks how a driver behaves when it gets unbound from
> a device or when the device gets unplugged.  Implement such test using
> sysfs interface.
> =

> Two minimalistic subtests - "unbind-rebind" and "unplug-rescan" -
> perform the named operations on a DRM device which is believed to be
> not in use.  Another pair of subtests named "hotunbind-lateclose" and
> hotunplug-lateclose" do the same on a DRM device while keeping its file
> descriptor open and close it thereafter.
> =

> v2: Run a subprocess with dummy_load instead of external command
>     (Antonio).
> v3: Run dummy_load from the test process directly (Antonio).
> v4: Run dummy_load from inside subtests (Antonio).
> v5: Try to restore the device to a working state after each subtest
>     (Petri, Daniel).
> v6: Run workload inside an igt helper subprocess so resources consumed
>     by the workload are cleaned up automatically on workload subprocess
>     crash, without affecting test results,
>   - move the igt helper with workload back from subtests to initial
>     fixture so workload crash also does not affect test results,
>   - other cleanups suggested by Katarzyna and Chris.
> v7: No changes.
> v8: Move workload functions back from fixture to subtests,
>   - register different actions and different workloads in respective
>     tables and iterate over those tables while enumerating subtests,
>   - introduce new subtest flavors by simply omitting module unload step,
>   - instead of simply requesting bus rescan or not, introduce action
>     specific device recovery helpers, required specifically with those
>     new subtests not touching the module,
>   - split workload functions in two parts, one spawning the workload,
>     the other waiting for its completion,
>   - for the new subtests not requiring module unload, run workload
>     functions directly from the test process and use new workload
>     completion wait functions in place of subprocess completion wait,
>   - take more control over logging, longjumps and exit codes in
>     workload subprocesses,
>   - add some debug messages for easy progress watching,
>   - move function API descriptions on top of respective typedefs.
> v9: All changes after Daniel's comments - thanks!
>   - flatten the code, don't try to create a midlayer (Daniel),
>   - provide minimal subtests that even don't keep device open (Daniel),
>   - don't use driver unbind in more advanced subtests (Daniel),
>   - provide subtests with different level of resources allocated
>     during device unplug (Daniel),
>   - provide subtests which check driver behavior after device hot
>     unplug (Daniel).
> v10 Rename variables and function arguments to something that
>     indicates they're file descriptors (Daniel),
>   - introduce a data structure that contains various file descriptors
>     and a helper function to set them all (Daniel),
>   - fix strange indentation (Daniel),
>   - limit scope to first three subtests as the initial set of tests to
>     merge (Daniel).
> v11 Fix typos in some comments,
>   - use SPDX license identifier,
>   - include a per-patch changelog in the commit message (Daniel).
> v12 We don't use SPDX license identifiers nor GPL-2.0 in IGT (Petri),
>   - avoid chipset, make sure we reopen the same device (Chris),
>   - rename subtest "drm_open-hotunplug" to "hotunplug-lateclose",
>   - add subtest "hotunbind-lateclose" (less affected by IOMMU issues),
>   - move some redundant code to helpers,
>   - reorder some helpers,
>   - reword some messages and comments,
>   - clean up headers.
> v13 Add test / subtest descriptions (patchwork).
> v14 Extract redundant device rescan and reopen code to a 'healthcheck'
>     helper,
>   - call igt_abort_on_f() on device reopen failure (Petri),
>   - if any timeout set with igt_set_timeout() inside a subtest expires,
>     call igt_abort_on_f() from a follow-up igt_fixture (Petri),
>   - when running on a i915 device, require GEM and call
>     igt_abort_on_f() if no usable GEM is detected on device reopen.
> v15 Add the test to CI blacklist (Martin).
> =

> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@intel.com>
> Cc: Antonio Argenziano <antonio.argenziano@intel.com>
> Cc: Petri Latvala <petri.latvala@intel.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Katarzyna Dec <katarzyna.dec@intel.com>
> Cc: Martin Peres <martin.peres@linux.intel.com>
> Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/Makefile.sources       |   1 +
>  tests/core_hotunplug.c       | 300 +++++++++++++++++++++++++++++++++++
>  tests/intel-ci/blacklist.txt |   1 +
>  tests/meson.build            |   1 +
>  4 files changed, 303 insertions(+)
>  create mode 100644 tests/core_hotunplug.c
> =

> diff --git a/tests/Makefile.sources b/tests/Makefile.sources
> index 4e44c98c2..32cbbf4f9 100644
> --- a/tests/Makefile.sources
> +++ b/tests/Makefile.sources
> @@ -18,6 +18,7 @@ TESTS_progs =3D \
>  	core_getclient \
>  	core_getstats \
>  	core_getversion \
> +	core_hotunplug \
>  	core_setmaster \
>  	core_setmaster_vs_auth \
>  	debugfs_test \
> diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> new file mode 100644
> index 000000000..f9cfc8c3c
> --- /dev/null
> +++ b/tests/core_hotunplug.c
> @@ -0,0 +1,300 @@
> +/*
> + * Copyright =A9 2019 Intel Corporation
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER D=
EALINGS
> + * IN THE SOFTWARE.
> + */
> +
> +#include <fcntl.h>
> +#include <limits.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <sys/stat.h>
> +#include <sys/types.h>
> +#include <unistd.h>
> +
> +#include "igt.h"
> +#include "igt_device_scan.h"
> +#include "igt_kmod.h"
> +#include "igt_sysfs.h"
> +
> +IGT_TEST_DESCRIPTION("Examine behavior of a driver on device hot unplug"=
);
> +
> +struct hotunplug {
> +	struct {
> +		int drm;
> +		int sysfs_dev;
> +		int sysfs_bus;
> +		int sysfs_drv;
> +	} fd;
> +	char *dev_bus_addr;
> +};
> +
> +/* Helpers */
> +
> +static void prepare_for_unbind(struct hotunplug *priv, char *buf, int bu=
flen)
> +{
> +	int len;
> +
> +	igt_assert(buflen);
> +
> +	priv->fd.sysfs_drv =3D openat(priv->fd.sysfs_dev, "device/driver",
> +				    O_DIRECTORY);
> +	igt_assert(priv->fd.sysfs_drv >=3D 0);
> +
> +	len =3D readlinkat(priv->fd.sysfs_dev, "device", buf, buflen - 1);
> +	buf[len] =3D '\0';
> +	priv->dev_bus_addr =3D strrchr(buf, '/');
> +	igt_assert(priv->dev_bus_addr++);
> +
> +	/* sysfs_dev no longer needed */
> +	close(priv->fd.sysfs_dev);
> +}
> +
> +static void prepare(struct hotunplug *priv, char *buf, int buflen)
> +{
> +	igt_debug("opening device\n");
> +	priv->fd.drm =3D __drm_open_driver(DRIVER_ANY);
> +	igt_assert(priv->fd.drm >=3D 0);
> +
> +	priv->fd.sysfs_dev =3D igt_sysfs_open(priv->fd.drm);
> +	igt_assert(priv->fd.sysfs_dev >=3D 0);
> +
> +	if (buf) {
> +		prepare_for_unbind(priv, buf, buflen);
> +	} else {
> +		/* prepare for bus rescan */
> +		priv->fd.sysfs_bus =3D openat(priv->fd.sysfs_dev,
> +					    "device/subsystem", O_DIRECTORY);
> +		igt_assert(priv->fd.sysfs_bus >=3D 0);
> +	}
> +}
> +
> +static const char *failure;
> +
> +/* Unbind the driver from the device */
> +static void driver_unbind(int fd_sysfs_drv, const char *dev_bus_addr)
> +{
> +	failure =3D "Driver unbind timeout!";
> +	igt_set_timeout(60, failure);
> +	igt_sysfs_set(fd_sysfs_drv, "unbind", dev_bus_addr);
> +	igt_reset_timeout();
> +	failure =3D NULL;
> +
> +	/* don't close fd_sysfs_drv, it will be used for driver rebinding */
> +}
> +
> +/* Re-bind the driver to the device */
> +static void driver_bind(int fd_sysfs_drv, const char *dev_bus_addr)
> +{
> +	failure =3D "Driver re-bind timeout!";
> +	igt_set_timeout(60, failure);
> +	igt_sysfs_set(fd_sysfs_drv, "bind", dev_bus_addr);
> +	igt_reset_timeout();
> +	failure =3D NULL;
> +
> +	close(fd_sysfs_drv);
> +}
> +
> +/* Remove (virtually unplug) the device from its bus */
> +static void device_unplug(int fd_sysfs_dev)
> +{
> +	failure =3D "Device unplug timeout!";
> +	igt_set_timeout(60, failure);
> +	igt_sysfs_set(fd_sysfs_dev, "device/remove", "1");
> +	igt_reset_timeout();
> +	failure =3D NULL;
> +
> +	close(fd_sysfs_dev);
> +}
> +
> +/* Re-discover the device by rescanning its bus */
> +static void bus_rescan(int fd_sysfs_bus)
> +{
> +	failure =3D "Bus rescan timeout!";
> +	igt_set_timeout(60, failure);
> +	igt_sysfs_set(fd_sysfs_bus, "rescan", "1");
> +	igt_reset_timeout();
> +	failure =3D NULL;
> +
> +	close(fd_sysfs_bus);
> +}
> +
> +static void healthcheck(void)
> +{
> +	int fd_drm;
> +
> +	/* device name may have changed, rebuild IGT device list */
> +	igt_devices_scan(true);
> +
> +	igt_debug("reopening the device\n");
> +	fd_drm =3D __drm_open_driver(DRIVER_ANY);
> +	igt_abort_on_f(fd_drm < 0, "Device reopen failure");
> +
> +	if (is_i915_device(fd_drm)) {
> +		failure =3D "GEM failure";
> +		igt_require_gem(fd_drm);
> +		failure =3D NULL;
> +	}
> +
> +	close(fd_drm);
> +}
> +
> +static void set_filter_from_device(int fd)
> +{
> +	const char *filter_type =3D "sys:";
> +	char filter[strlen(filter_type) + PATH_MAX + 1];
> +	char *dst =3D stpcpy(filter, filter_type);
> +	char path[PATH_MAX + 1];
> +
> +	igt_assert(igt_sysfs_path(fd, path, PATH_MAX));
> +	strncat(path, "/device", PATH_MAX - strlen(path));
> +	igt_assert(realpath(path, dst));
> +
> +	igt_device_filter_set(filter);
> +}
> +
> +/* Subtests */
> +
> +static void unbind_rebind(void)
> +{
> +	struct hotunplug priv;
> +	char buf[PATH_MAX];
> +
> +	prepare(&priv, buf, sizeof(buf));
> +
> +	igt_debug("closing the device\n");
> +	close(priv.fd.drm);
> +
> +	igt_debug("unbinding the driver from the device\n");
> +	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr);
> +
> +	igt_debug("rebinding the driver to the device\n");
> +	driver_bind(priv.fd.sysfs_drv, priv.dev_bus_addr);
> +
> +	healthcheck();
> +}
> +
> +static void unplug_rescan(void)
> +{
> +	struct hotunplug priv;
> +
> +	prepare(&priv, NULL, 0);
> +
> +	igt_debug("closing the device\n");
> +	close(priv.fd.drm);
> +
> +	igt_debug("unplugging the device\n");
> +	device_unplug(priv.fd.sysfs_dev);
> +
> +	igt_debug("recovering the device\n");
> +	bus_rescan(priv.fd.sysfs_bus);
> +
> +	healthcheck();
> +}
> +
> +static void hotunbind_lateclose(void)
> +{
> +	struct hotunplug priv;
> +	char buf[PATH_MAX];
> +
> +	prepare(&priv, buf, sizeof(buf));
> +
> +	igt_debug("hot unbinding the driver from the device\n");
> +	driver_unbind(priv.fd.sysfs_drv, priv.dev_bus_addr);
> +
> +	igt_debug("rebinding the driver to the device\n");
> +	driver_bind(priv.fd.sysfs_drv, priv.dev_bus_addr);
> +
> +	igt_debug("late closing the unbound device instance\n");
> +	close(priv.fd.drm);
> +
> +	healthcheck();
> +}
> +
> +static void hotunplug_lateclose(void)
> +{
> +	struct hotunplug priv;
> +
> +	prepare(&priv, NULL, 0);
> +
> +	igt_debug("hot unplugging the device\n");
> +	device_unplug(priv.fd.sysfs_dev);
> +
> +	igt_debug("recovering the device\n");
> +	bus_rescan(priv.fd.sysfs_bus);
> +
> +	igt_debug("late closing the removed device instance\n");
> +	close(priv.fd.drm);
> +
> +	healthcheck();
> +}
> +
> +/* Main */
> +
> +igt_main
> +{
> +	igt_fixture {
> +		int fd_drm;
> +
> +		/**
> +		 * As subtests must be able to close examined devices
> +		 * completely, don't use drm_open_driver() as it keeps
> +		 * a device file descriptor open for exit handler use.
> +		 */
> +		fd_drm =3D __drm_open_driver(DRIVER_ANY);
> +		igt_assert(fd_drm >=3D 0);
> +
> +		if (is_i915_device(fd_drm))
> +			igt_require_gem(fd_drm);
> +
> +		/* Make sure subtests always reopen the same device */
> +		set_filter_from_device(fd_drm);
> +
> +		close(fd_drm);
> +	}
> +
> +	igt_describe("Check if the driver can be cleanly unbound from a device =
believed to be closed");
> +	igt_subtest("unbind-rebind")
> +		unbind_rebind();
> +
> +	igt_fixture
> +		igt_abort_on_f(failure, "%s\n", failure);
> +
> +	igt_describe("Check if a device believed to be closed can be cleanly un=
plugged");
> +	igt_subtest("unplug-rescan")
> +		unplug_rescan();
> +
> +	igt_fixture
> +		igt_abort_on_f(failure, "%s\n", failure);
> +
> +	igt_describe("Check if the driver can be cleanly unbound from a still o=
pen device, then released");
> +	igt_subtest("hotunbind-lateclose")
> +		hotunbind_lateclose();
> +
> +	igt_fixture
> +		igt_abort_on_f(failure, "%s\n", failure);
> +
> +	igt_describe("Check if a still open device can be cleanly unplugged, th=
en released");
> +	igt_subtest("hotunplug-lateclose")
> +		hotunplug_lateclose();
> +
> +	igt_fixture
> +		igt_abort_on_f(failure, "%s\n", failure);
> +}
> diff --git a/tests/intel-ci/blacklist.txt b/tests/intel-ci/blacklist.txt
> index ee7045f03..201f4b1b4 100644
> --- a/tests/intel-ci/blacklist.txt
> +++ b/tests/intel-ci/blacklist.txt
> @@ -117,3 +117,4 @@ igt@.*@.*pipe-f($|-.*)
>  # Since 5.7-rc1, this test has produced tens of megabytes of kernel
>  # logs.
>  igt@perf_pmu@cpu-hotplug
> +igt@core_hotunplug@.*


That makes it read like it's also "producing tens of megabytes of
kernel logs". An empty line, and a separate comment with something
like

# Currently fails and leaves the machine in a very bad state, and
# causes coverage loss for other tests.


With that,
Acked-by: Petri Latvala <petri.latvala@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
